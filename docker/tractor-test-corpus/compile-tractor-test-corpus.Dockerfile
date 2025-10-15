# Pinning for consistency, feel free to bump this whenever convenient
# Last bump: Oct 8, 2025
FROM ubuntu:24.04@sha256:728785b59223d755e3e5c5af178fab1be7031f3522c5ccd7a0b32b80d8248123 AS compile-tractor-test-corpus

RUN apt update -y
RUN apt install -y build-essential clang-20 cmake git libclang-dev libssl-dev llvm ninja-build pkg-config python3 python3-venv rustup vim
RUN rustup default stable

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

COPY clang-wrapper.sh /
RUN ln -s /clang-wrapper.sh /usr/bin/clang
RUN CC=/usr/bin/clang RUSTFLAGS="--emit=llvm-bc,link" ./deployment/scripts/github-actions/run-tests.pyz --jobs 0 --junit-xml junit.xml

ARG BITCODE_DIR="/tractor-test-corpus-x86-64-bitcode"
RUN mkdir -p ${BITCODE_DIR}
ARG LLVMIR_DIR="/tractor-test-corpus-x86-64-llvmir"
RUN mkdir -p ${LLVMIR_DIR}/build
RUN mkdir -p ${LLVMIR_DIR}/deps
WORKDIR /Test-Corpus/Public-Tests
# This grabs all project-specific LLVM IR files, and copies their directory structure
RUN for bc in ./*/*/build-ninja/*.bc ; do mkdir -p ${LLVMIR_DIR}/`dirname $bc`; llvm-dis-20 -o ${LLVMIR_DIR}/`dirname $bc`/`basename $bc ".bc"`.ll $bc; done
# This grabs all dependencies LLVM IR files, and aggregates them all together (to avoid large
# redundant copies)
RUN for bc in ./*/*/runner/release/deps/*.bc ; do ll="${LLVMIR_DIR}/deps/`basename $bc ".bc"`.ll"; if [ ! -f ${ll} ]; then llvm-dis-20 -o $ll $bc; fi; done
# This grabs all "build" LLVM IR files, and aggregates them all together (to avoid large redundant
# copies)
RUN for bc in ./*/*/runner/release/build/*/*.bc ; do ll="${LLVMIR_DIR}/build/`basename $bc ".bc"`.ll"; if [ ! -f ${ll} ]; then llvm-dis-20 -o $ll $bc; fi; done
