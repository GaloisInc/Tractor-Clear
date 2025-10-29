# Pinning for consistency, feel free to bump this whenever convenient
# Last bump: Oct 8, 2025
FROM ubuntu:24.04@sha256:66460d557b25769b102175144d538d88219c077c678a49af4afca6fbfc1b5252 AS compile-tractor-test-corpus

RUN apt update -y
# Note: ripgrep, tree, and vim are for convenience when debugging the output image
RUN apt install -y build-essential clang-20 cmake git libclang-dev libssl-dev llvm ninja-build pkg-config python3 python3-venv ripgrep rustup tree vim

# rustup commands fail with annoying errors if this isn't disabled first
RUN rustup set auto-self-update disable

# We want nightly, because we're going to extract LLVM IR for alloc/core/std, with a nightly flag.
#
# We're pinning to an older version of nightly because as of today (Oct 2025), the current nightly
# is tied to clang-21, but we'd rather have everything on clang-20.
ARG RUSTVER="nightly-2025-06-01"
RUN rustup toolchain install ${RUSTVER}
RUN rustup default ${RUSTVER}
# This makes the Rust source available to compile to LLVM
RUN rustup component add rust-src --toolchain ${RUSTVER}-x86_64-unknown-linux-gnu

RUN mkdir -p /root/.ssh/
ARG KNOWN_HOSTS="/root/.ssh/known_hosts"
RUN ssh-keyscan github.com > ${KNOWN_HOSTS}
RUN chmod 600 ${KNOWN_HOSTS}
RUN chown root:root ${KNOWN_HOSTS}
RUN --mount=type=ssh git clone git@github.com:DARPA-TRACTOR-Program/Test-Corpus.git

# main as of Oct 9, 2025
ARG TRACTOR_TESTS_COMMIT=9efde56843ab59e86b0683babe541b7acb21e13d
WORKDIR /Test-Corpus/
RUN git checkout ${TRACTOR_TESTS_COMMIT}

# For testing purposes, it's nice to only have a few projects
# RUN rm -rf /Test-Corpus/Public-Tests/B01_organic /Test-Corpus/Public-Tests/B01_synthetic /Test-Corpus/Public-Tests/P00_perlin_noise /Test-Corpus/Public-Tests/P01_sphincs_plus
# RUN git restore ./Public-Tests/B01_synthetic/001_helloworld
# RUN git restore ./Public-Tests/B01_synthetic/001_helloworld_lib
# RUN git restore ./Public-Tests/B01_organic/colourblind_lib
# RUN git restore ./Public-Tests/B01_organic/div_euclid_lib

COPY clang-wrapper.sh /
RUN ln -s /clang-wrapper.sh /usr/local/bin/clang
# Note: it's much slower to compile alloc/core/std, so maybe instead of doing it once per project,
# we could do it once and for all.  TODO
COPY cargo-wrapper.sh /
RUN ln -s /cargo-wrapper.sh /usr/local/bin/cargo
RUN CC=/usr/local/bin/clang RUSTFLAGS="--emit=llvm-ir,link" ./deployment/scripts/github-actions/run-tests.pyz --jobs 0 --junit-xml junit.xml

ARG LLVMIR_DIR="/tractor-test-corpus-x86-64-llvmir"
RUN mkdir -p ${LLVMIR_DIR}/build
RUN mkdir -p ${LLVMIR_DIR}/deps
WORKDIR /Test-Corpus/Public-Tests
# This grabs all project-specific LLVM bitcode files, and copies their directory structure.
RUN for bc in ./*/*/build-ninja/*.bc; \
      do mkdir -p ${LLVMIR_DIR}/`dirname $bc`; \
      llvm-dis-20 -o ${LLVMIR_DIR}/`dirname $bc`/`basename $bc ".bc"`.ll $bc; \
    done
# Grab all dependency LLVM IR files, aggregate them all together (to avoid large redundant copies)
RUN for ll in ./*/*/runner/release/deps/*.ll; do \
      llcopy="${LLVMIR_DIR}/deps/`basename $ll`"; \
      if [ ! -f ${llcopy} ] && [ `basename $ll` != runner* ]; then \
        cp $ll $llcopy; \
      fi; \
    done
# Grab all "runner" LLVM IR files, for projects set as libraries
RUN for dir in ./*/*/; do \
      mkdir -p ${LLVMIR_DIR}/${dir}; \
      # Note: using `ls` here to avoid errors for non-library folders that don't have runners.
      # There will be error messages in the Docker output, but it won't fail the run.
      for ll in `ls ${dir}/runner/release/deps/runner-*.ll`; do \
        cp $ll ${LLVMIR_DIR}/${dir}/`basename $ll`; \
      done; \
    done
# This grabs all "build" LLVM IR files, and aggregates them all together (to avoid large redundant
# copies)
RUN for ll in ./*/*/runner/release/build/*/*.ll; do \
      llcopy="${LLVMIR_DIR}/build/`basename $ll`"; \
      if [ ! -f ${llcopy} ]; then \
        cp $ll $llcopy; \
      fi; \
    done

ARG MISSING_SYMBOLS_DIR="/tmp/missing_symbols"
COPY missing_symbols/Cargo.toml ${MISSING_SYMBOLS_DIR}/Cargo.toml
COPY missing_symbols/src/lib.rs ${MISSING_SYMBOLS_DIR}/src/lib.rs
WORKDIR ${MISSING_SYMBOLS_DIR}
# Note: this will not use the exact same alloc/core/std as the above, so we also need to use the
# modified cargo and bring all the LLVM IR files.
RUN RUSTFLAGS="--emit=llvm-ir,link" cargo build --release
RUN cp ${MISSING_SYMBOLS_DIR}/target/release/deps/*.ll ${LLVMIR_DIR}/deps/

# Note: trying to be explicit about module inclusion here so that we are aware of exactly what we're
# depending on
WORKDIR ${LLVMIR_DIR}
ARG WANTED_DEPS_DIR="${LLVMIR_DIR}/wanted_deps"
RUN mkdir -p ${WANTED_DEPS_DIR}
ARG WANTED_DEPS_OBJ_DIR="${LLVMIR_DIR}/wanted_deps_obj"
RUN mkdir -p ${WANTED_DEPS_OBJ_DIR}

# Moving all the LLVM IR files we need in the wanted deps directory.  What remains in deps/ are
# dependencies we don't actually need.
RUN mv \
  deps/addr2line-*.ll \
  deps/adler2-*.ll \
  deps/alloc-*.ll \
  deps/arbitrary-*.ll \
  deps/argh-*.ll \
  # we get 2 copies of this one, but I think we only need this one
  deps/argh_shared-ac*.ll \
  deps/core-*.ll \
  deps/getrandom-*.ll \
  deps/gimli-*.ll \
  # Note: we get 2 copies of hashbrown, but I think we need both
  deps/hashbrown-*.ll \
  deps/libloading-*.ll \
  deps/memchr-*.ll \
  deps/miniz_oxide-*.ll \
  deps/object-*.ll \
  deps/panic_abort-*.ll \
  deps/rust_fuzzy_search-*.ll \
  deps/rustc_demangle-*.ll \
  deps/ryu-*.ll \
  deps/serde-*.ll \
  deps/serde_json-*.ll \
  deps/std-*.ll \
  deps/std_detect-*.ll \
  # Finally, those missing symbols...
  deps/missing_symbols-*.ll \
  ${WANTED_DEPS_DIR}

# We can compile all the dependencies LLVM IR files to object files once and for all
# Note: directly calling clang here to avoid our wrapper
RUN for dep in ${WANTED_DEPS_DIR}/*.ll; do \
      # Note: directly calling clang here to avoid our wrapper
      /usr/bin/clang-20 -c ${dep} -o ${WANTED_DEPS_OBJ_DIR}/`basename ${dep} .ll`.o; \
    done

# Then we can compile/link the runners against the dependencies
RUN for outer_dir in B01_organic; do \
      for inner_dir in `ls ${outer_dir}`; do \
      # for inner_dir in `ls ${outer_dir}`; do \
        # Note: directly calling clang here to avoid our wrapper
        /usr/bin/clang-20 ${outer_dir}/${inner_dir}/runner*.ll ${WANTED_DEPS_OBJ_DIR}/*.o \
          -o ${outer_dir}/${inner_dir}/run_${inner_dir}; \
      done; \
    done

# Note: at this point, the image is really big because of all the intermediate compilation files.
# The following cleans up all those files, making it much smaller, but less debuggable.
RUN rm -rf /Test-Corpus/

# Just for convenience, leave the user in the output directory
WORKDIR ${LLVMIR_DIR}
