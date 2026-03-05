# Pinning for consistency, feel free to bump this whenever convenient
# Last bump: Nov 24, 2025
FROM ubuntu:24.04@sha256:84e77dee7d1bc93fb029a45e3c6cb9d8aa4831ccfcc7103d36e876938d28895b AS compile-tractor-test-corpus

# Note: this was built against Test-Corpus commit de47e3e268f1991cc6df91576e6f94ebc82fed82

RUN apt update -y
ARG CLANG="clang-20"
# Note: ripgrep, tree, and vim are for convenience when debugging the output image
RUN apt install -y build-essential ${CLANG} cmake git libclang-dev libssl-dev llvm musl-tools ninja-build pkg-config python3 python3-venv ripgrep rustup tree vim

# rustup commands fail with annoying errors if this isn't disabled first
RUN rustup set auto-self-update disable

# We want nightly, because we're going to extract LLVM IR for alloc/core/std, with a nightly flag.
#
# We're pinning to an older version of nightly because as of today (Oct 2025), the current nightly
# is tied to clang-21, but we'd rather have everything on clang-20.
# ARG RUSTVER="nightly-2025-06-01"
ARG RUSTVER="nightly-2025-11-11"
ARG TARGET="x86_64-unknown-linux-gnu"
RUN rustup toolchain install ${RUSTVER}
RUN rustup default ${RUSTVER}
RUN rustup target add ${TARGET}
# This makes the Rust source available to compile to LLVM
RUN rustup component add rust-src --toolchain ${RUSTVER}

RUN mkdir -p /root/.ssh/
ARG KNOWN_HOSTS="/root/.ssh/known_hosts"
RUN ssh-keyscan github.com > ${KNOWN_HOSTS}
RUN chmod 600 ${KNOWN_HOSTS}
RUN chown root:root ${KNOWN_HOSTS}
# Note: you need to have added your identities to your ssh-agent
# Check the output of `ssh-add -L` if this step fails.
RUN --mount=type=ssh git clone git@github.com:DARPA-TRACTOR-Program/Test-Corpus.git

# main as of Nov 24, 2025
# ARG TRACTOR_TESTS_COMMIT=96ce4c7e098bc5bbaa536c83b61ca77f2acb4439
# main as of Mar 5, 2026
ARG TRACTOR_TESTS_COMMIT=0319ab0ae6fdcc5c354d2fbf7ee646049e5006b1
WORKDIR /Test-Corpus/
RUN git checkout ${TRACTOR_TESTS_COMMIT}

# For testing purposes, it's nice to only have a few projects
RUN rm -rf ./Public-Tests/B01_organic \
           ./Public-Tests/B02_organic \
           ./Public-Tests/B01_synthetic \
           ./Public-Tests/B02_synthetic \
           ./Public-Tests/P00_perlin_noise \
           ./Public-Tests/P01_sphincs_plus
RUN git restore ./Public-Tests/B01_synthetic/001_helloworld_lib
RUN git restore ./Public-Tests/B01_organic/colourblind_lib
RUN git restore ./Public-Tests/B01_organic/div_euclid_lib

COPY clang-wrapper.sh /
RUN ln -s /clang-wrapper.sh /usr/local/bin/clang
# Note: it's much slower to compile alloc/core/std, so maybe instead of doing it once per project,
# we could do it once and for all.  TODO
COPY cargo-wrapper.sh /
RUN ln -s /cargo-wrapper.sh /usr/local/bin/cargo
COPY rustc-wrapper.sh /
RUN ln -s /rustc-wrapper.sh /usr/local/bin/rustc

# We need to use the exact same RUSTFLAGS between the files we compile and the missing-symbols
# crate, so that our mangling comes out exactly the same.
# Having issues with this now, it complains that core was not compiled with the flag
# ARG RUSTFLAGS_WRAPPER="--emit=llvm-ir,link -Zunstable-options -Cpanic=immediate-abort"
ARG RUSTFLAGS="--emit=llvm-ir,link"

# Build one specific test with the cargo wrapper, so that we can extract the std bitcode.  This is
# very slow, so we will only do it for one test, and reuse the std bitcode for all other tests.
RUN CARGO_TERM_VERBOSE=true CC=/usr/local/bin/clang CARGO_BUILD_TARGET="${TARGET}" RUSTFLAGS="${RUSTFLAGS}" ./deployment/scripts/github-actions/run_ci.sh --only config
RUN CARGO_TERM_VERBOSE=true CC=/usr/local/bin/clang CARGO_BUILD_TARGET="${TARGET}" RUSTFLAGS="${RUSTFLAGS}" ./deployment/scripts/github-actions/run_ci.sh --only build
RUN CARGO_TERM_VERBOSE=true CC=/usr/local/bin/clang CARGO_BUILD_TARGET="${TARGET}" RUSTFLAGS="${RUSTFLAGS}" ./deployment/scripts/github-actions/run_ci.sh --only build-runner
# Now removing the cargo wrapper to make all other builds faster
RUN rm /usr/local/bin/cargo
# Skipped while debugging Dockerfile for faster build
# RUN CC=/usr/local/bin/clang RUSTFLAGS="${RUSTFLAGS}" ./deployment/scripts/github-actions/run-tests.pyz

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
# For some reason, these are now in debug, not release
RUN for ll in /Test-Corpus/target/${TARGET}/debug/deps/*.ll; do \
      llcopy="${LLVMIR_DIR}/deps/`basename $ll`"; \
      if [ ! -f ${llcopy} ] && [ `basename $ll` != runner* ]; then \
        cp $ll $llcopy; \
      fi; \
    done

# This is no longer needed, now the runners are in the above
# # Grab all "runner" LLVM IR files, for projects set as libraries
# RUN for dir in ./*/*/; do \
#       mkdir -p ${LLVMIR_DIR}/${dir}; \
#       # Note: using `ls` here to avoid errors for non-library folders that don't have runners.
#       # There will be error messages in the Docker output, but it won't fail the run.
#       for ll in `ls ${dir}/runner/release/deps/runner-*.ll`; do \
#         cp $ll ${LLVMIR_DIR}/${dir}/`basename $ll`; \
#       done; \
#     done

# # This grabs all "build" LLVM IR files, and aggregates them all together (to avoid large redundant
# # copies)
# RUN for ll in ./*/*/runner/release/build/*/*.ll; do \
#       llcopy="${LLVMIR_DIR}/build/`basename $ll`"; \
#       if [ ! -f ${llcopy} ]; then \
#         cp $ll $llcopy; \
#       fi; \
#     done

ARG MISSING_SYMBOLS_DIR="/tmp/missing_symbols"
COPY missing_symbols/Cargo.toml ${MISSING_SYMBOLS_DIR}/Cargo.toml
COPY missing_symbols/src/lib.rs ${MISSING_SYMBOLS_DIR}/src/lib.rs
WORKDIR ${MISSING_SYMBOLS_DIR}
# Note: this will not use the exact same alloc/core/std as the above, so we also need to use the
# modified cargo and bring all the LLVM IR files.
# Make sure to use --release if the above are in release mode, and --debug if the above are in debug
# mode, otherwise you will get mismatched hashes on core crate symbols
RUN CARGO_TERM_VERBOSE=true CC=/usr/local/bin/clang CARGO_BUILD_TARGET="${TARGET}" RUSTFLAGS="${RUSTFLAGS}" cargo build --release
RUN cp ${MISSING_SYMBOLS_DIR}/target/${TARGET}/release/deps/*.ll ${LLVMIR_DIR}/deps/

# Note: trying to be explicit about module inclusion here so that we are aware of exactly what we're
# depending on
WORKDIR ${LLVMIR_DIR}
ARG WANTED_DEPS_DIR="${LLVMIR_DIR}/wanted_deps"
RUN mkdir -p ${WANTED_DEPS_DIR}
ARG WANTED_DEPS_OBJ_DIR="${LLVMIR_DIR}/wanted_deps_obj"
RUN mkdir -p ${WANTED_DEPS_OBJ_DIR}
ARG RUNNERS_DIR="${LLVMIR_DIR}/runners"
RUN mkdir -p ${RUNNERS_DIR}

# # Moving all the LLVM IR files we need in the wanted deps directory.  What remains in deps/ are
# # dependencies we don't actually need.  This was determined by linking them all together until clang
# # had no complaint about unresolved symbols.
# RUN mv \
#   deps/addr2line-*.ll \
#   deps/adler2-*.ll \
#   deps/alloc-*.ll \
#   deps/arbitrary-*.ll \
#   deps/argh-*.ll \
#   # deps/argh_shared-25ec8866881681c4.ll \
#   deps/core-*.ll \
#   deps/getrandom-*.ll \
#   deps/gimli-*.ll \
#   deps/hashbrown-*.ll \
#   deps/itoa-*.ll \
#   deps/libloading-*.ll \
#   deps/memchr-*.ll \
#   deps/miniz_oxide-*.ll \
#   deps/object-*.ll \
#   deps/panic_abort-*.ll \
#   # deps/rust_fuzzy_search-*.ll \
#   deps/rustc_demangle-*.ll \
#   # deps/ryu-*.ll \
#   deps/serde-*.ll \
#   deps/serde_core-*.ll \
#   deps/serde_json-*.ll \
#   deps/std-*.ll \
#   deps/std_detect-*.ll \
#   deps/zmij-*.ll \
#   # Finally, those missing symbols...
#   deps/missing_symbols-*.ll \
#   ${WANTED_DEPS_DIR}

# RUN mv deps/*runner-*.ll ${RUNNERS_DIR}

# # We can compile all the dependencies LLVM IR files to object files once and for all
# # Note: directly calling clang here to avoid our wrapper
# RUN for dep in ${WANTED_DEPS_DIR}/*.ll; do \
#       # Note: directly calling clang here to avoid our wrapper
#       /usr/bin/${CLANG} -c ${dep} -o ${WANTED_DEPS_OBJ_DIR}/`basename ${dep} .ll`.o; \
#     done

# # Then we can compile/link the runners against the dependencies
# # We do this mostly to witness that we have all of the symbols we need to build the full executable
# RUN for runner in ${RUNNERS_DIR}/*runner-*.ll; do \
#       # Note: directly calling clang here to avoid our wrapper
#       /usr/bin/${CLANG} ${runner} ${WANTED_DEPS_OBJ_DIR}/*.o \
#         -o run_`basename ${runner} .ll`; \
#     done

# # Note: at this point, the image is really big because of all the intermediate compilation files.
# # The following cleans up all those files, making it much smaller, but less debuggable.
# # RUN rm -rf /Test-Corpus/

# # Just for convenience, leave the user in the output directory
# WORKDIR ${LLVMIR_DIR}

# TODO: generalize this for all LLVM files

RUN mkdir linked
WORKDIR ${LLVMIR_DIR}/linked
RUN llvm-link-20 \
  ../deps/addr2line-*.ll \
  ../deps/adler2-*.ll \
  ../deps/alloc-*.ll \
  ../deps/arbitrary-*.ll \
  ../deps/argh-*.ll \
  # There are two argh_shared
  # ../deps/argh_shared-108e1e0aec5e5d8f.ll \
  ../deps/argh_shared-*.ll \
  ../deps/compiler_builtins-*.ll \
  ../deps/core-*.ll \
  ../deps/getrandom-*.ll \
  ../deps/gimli-*.ll \
  ../deps/hashbrown-*.ll \
  ../deps/itoa-*.ll \
  ../deps/libc-*.ll \
  ../deps/libloading-*.ll \
  ../deps/memchr-*.ll \
  ../deps/miniz_oxide-*.ll \
  ../deps/object-*.ll \
  ../deps/panic_abort-*.ll \
  # For some reason, musl has proc_macro instead of proc_macro2
  ../deps/proc_macro-*.ll \
  # ../deps/proc_macro2-*.ll \
  ../deps/rustc_demangle-*.ll \
  ../deps/serde-*.ll \
  ../deps/serde_core-*.ll \
  ../deps/serde_json-*.ll \
  ../deps/std-*.ll \
  ../deps/std_detect-*.ll \
  ../deps/zmij-*.ll \
  ../deps/missing_symbols-*.ll \
  ../deps/_001_helloworld_lib_runner-*.ll \
  -o linked.bc
RUN opt-20 \
  -passes='internalize,globalopt,globaldce,adce,dce' \
  -internalize-public-api-list='main' \
  linked.bc -o opt.bc
RUN llvm-dis-20 opt.bc -o opt.ll
# RUN rg Display ../deps | grep usize | grep define && false
# RUN rg panic_fmt ../deps | grep define && false
# Ensuring that the optimized binary is buildable
RUN ${CLANG} opt.ll -o opt

# Attempting to get LLVM bitcode for musl
# RUN CC=clang CFLAGS="-emit-llvm -flto" ./configure --target=x86_64-linux-musl

# WORKDIR /
# RUN git clone git://git.musl-libc.org/musl
# WORKDIR /musl
# RUN CC=/usr/local/bin/clang ./configure --prefix=/usr/local/musl
# RUN make
# RUN mkdir ${LLVMIR_DIR}/musl
# RUN for bc in ./*.bc; do \
#       llvm-dis-20 -o ${LLVMIR_DIR}/musl/`basename $bc ".bc"`.ll $bc; \
#     done

# Note: we want release mode in the below, because it removes the checks for misalignments, which
# Vellvm is currently disrespecting.  Because the colourblind program is so simple, we need to
# prevent it from inlining, otherwise Rust can just figure out the return value.

# ARG COLOURBLIND_GOOD_DIR="colourblind_good"
# COPY colourblind_good /${COLOURBLIND_GOOD_DIR}
# WORKDIR /${COLOURBLIND_GOOD_DIR}
# RUN CARGO_TERM_VERBOSE=true CC=/usr/local/bin/clang \
#     CARGO_BUILD_TARGET="${TARGET}" RUSTFLAGS="${RUSTFLAGS} -C link-arg=-nostartfiles" \
#     cargo build -Z build-std=core --release
# RUN mkdir linked
# RUN cp ./target/${TARGET}/release/deps/*.ll ./linked
# WORKDIR /${COLOURBLIND_GOOD_DIR}/linked
# # Note: was forced to bump to a rustc that uses clang-21, which produces the dead_on_return
# # attribute, but clang-20.1.2 is unable to parse it, so we need to get rid of it...
# RUN sed -i 's/ dead_on_return//g' *.ll
# RUN llvm-link-20 *.ll -o linked.bc
# RUN opt-20 \
#   -passes='internalize,globalopt,globaldce,adce,dce' \
#   -internalize-public-api-list='main' \
#   linked.bc -o opt.bc
# RUN llvm-dis-20 opt.bc -o opt.ll
# RUN clang-20 opt.ll -o colourblind_good

# ARG COLOURBLIND_BAD_DIR="colourblind_bad"
# COPY colourblind_bad /${COLOURBLIND_BAD_DIR}
# WORKDIR /${COLOURBLIND_BAD_DIR}
# RUN CARGO_TERM_VERBOSE=true CC=/usr/local/bin/clang \
#     CARGO_BUILD_TARGET="${TARGET}" RUSTFLAGS="${RUSTFLAGS} -C link-arg=-nostartfiles" \
#     cargo build -Z build-std=core --release
# RUN mkdir linked
# RUN cp ./target/${TARGET}/release/deps/*.ll ./linked
# WORKDIR /${COLOURBLIND_BAD_DIR}/linked
# # Note: was forced to bump to a rustc that uses clang-21, which produces the dead_on_return
# # attribute, but clang-20.1.2 is unable to parse it, so we need to get rid of it...
# RUN sed -i 's/ dead_on_return//g' *.ll
# RUN llvm-link-20 *.ll -o linked.bc
# RUN opt-20 \
#   -passes='internalize,globalopt,globaldce,adce,dce' \
#   -internalize-public-api-list='main' \
#   linked.bc -o opt.bc
# RUN llvm-dis-20 opt.bc -o opt.ll
# RUN clang-20 opt.ll -o colourblind_bad

ARG CRISP_DIR="/crisp-rust-outputs"
ARG CRISP_LINKED_DIR="/crisp-linked"
COPY /crisp-rust-outputs-gpt-5.4-20260311/Public-Tests/ ${CRISP_DIR}
RUN mkdir ${CRISP_LINKED_DIR}
WORKDIR ${CRISP_DIR}/B01_organic
COPY compile-crisp-output.sh .
RUN chmod +x ./compile-crisp-output.sh
# This is a long loop over multiple files, so too awful to write in Docker
RUN ./compile-crisp-output.sh

WORKDIR ${CRISP_LINKED_DIR}

# COPY no-std-main /no-std-main
# WORKDIR /no-std-main
# RUN CARGO_TERM_VERBOSE=true CC=/usr/local/bin/clang \
#     CARGO_BUILD_TARGET="${TARGET}" RUSTFLAGS="${RUSTFLAGS} -C link-arg=-nostartfiles" \
#     cargo build
# RUN mkdir linked
# RUN cp ./target/x86_64-unknown-linux-gnu/debug/deps/*.ll ./linked
# WORKDIR /no-std-main/linked
# RUN llvm-link-20 *.ll -o linked.bc
# RUN llvm-dis-20 linked.bc -o linked.ll
