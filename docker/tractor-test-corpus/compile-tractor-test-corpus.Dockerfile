# Pinning for consistency, feel free to bump this whenever convenient
# Last bump: Oct 8, 2025
FROM ubuntu:24.04@sha256:66460d557b25769b102175144d538d88219c077c678a49af4afca6fbfc1b5252 AS compile-tractor-test-corpus

RUN apt update -y
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

# For testing purposes, it's nice to only have one project
RUN rm -rf /Test-Corpus/Public-Tests/B01_organic /Test-Corpus/Public-Tests/B01_synthetic /Test-Corpus/Public-Tests/P00_perlin_noise /Test-Corpus/Public-Tests/P01_sphincs_plus
RUN git restore ./Public-Tests/B01_organic/colourblind_lib

COPY clang-wrapper.sh /
RUN ln -s /clang-wrapper.sh /usr/local/bin/clang
COPY cargo-wrapper.sh /
RUN ln -s /cargo-wrapper.sh /usr/local/bin/cargo
RUN CC=/usr/local/bin/clang RUSTFLAGS="--emit=llvm-ir,link" ./deployment/scripts/github-actions/run-tests.pyz --jobs 0 --junit-xml junit.xml

ARG LLVMIR_DIR="/tractor-test-corpus-x86-64-llvmir"
RUN mkdir -p ${LLVMIR_DIR}/build
RUN mkdir -p ${LLVMIR_DIR}/deps
WORKDIR /Test-Corpus/Public-Tests
# This grabs all project-specific LLVM bitcode files, and copies their directory structure.
RUN for bc in ./*/*/build-ninja/*.bc ; do mkdir -p ${LLVMIR_DIR}/`dirname $bc`; llvm-dis-20 -o ${LLVMIR_DIR}/`dirname $bc`/`basename $bc ".bc"`.ll $bc; done
# This grabs all dependencies LLVM IR files, and aggregates them all together (to avoid large
# redundant copies)
RUN for ll in ./*/*/runner/release/deps/*.ll ; do llcopy="${LLVMIR_DIR}/deps/`basename $ll`"; if [ ! -f ${llcopy} ]; then cp $ll $llcopy; fi; done
# This grabs all "build" LLVM IR files, and aggregates them all together (to avoid large redundant
# copies)
RUN for ll in ./*/*/runner/release/build/*/*.ll ; do llcopy="${LLVMIR_DIR}/build/`basename $ll`"; if [ ! -f ${llcopy} ]; then cp $ll $llcopy; fi; done

# Also for testing purposes, it's nice to have these tools ready
# RUN apt install -y ripgrep tree

# Just for convenience, leave the user in the output directory
WORKDIR ${LLVMIR_DIR}
