# Note: pinning this to today's (Aug 13, 2025), not because we need it, but just because some steps
# are very long, and it's annoying to rebuild it all when they push some minor change to the Ubuntu
# Docker image.  Feel free to bump this pin infrequently if any reason comes up.
FROM ubuntu:24.04@sha256:7c06e91f61fa88c08cc74f7e1b7c69ae24910d745357e0dfe1d2c0322aaf20f9 AS compile-c2rust-tests

# main as of Aug 8, 2025
ARG C2RUST_COMMIT=efa77809e8f8c0fa84b8a808191995da2dfef4d3

RUN apt update -y
RUN apt install -y build-essential clang-18 cmake git libclang-dev libssl-dev llvm pkg-config python3 python3-venv rustup
RUN rustup default stable

RUN git clone https://github.com/immunant/c2rust.git
WORKDIR /c2rust
RUN git checkout ${C2RUST_COMMIT}

# This step takes close to an hour!
RUN cargo build
RUN cargo build --release

RUN python3 -m venv venv
ENV PATH="venv/bin:$PATH"
RUN pip install plumbum psutil toml

# Note: in my testing setup, clang in the Docker image will fail when passed `-march=native` because
# it will detect "athlon-xp", which is not supported by clang...  The wrapper just replaces "native"
# with "x86-64" which should work.
COPY clang-wrapper.sh /
RUN ln -s /clang-wrapper.sh /usr/bin/clang
# This patch makes it so that the c2rust tests don't pass "-march=native" as it breaks under Docker
COPY c2rust.patch /c2rust/
RUN git apply c2rust.patch

WORKDIR /
RUN git clone https://github.com/Ptival/build-bom.git
WORKDIR /build-bom
RUN git checkout vr/rustc-support
RUN cargo build --release

WORKDIR /c2rust
RUN /build-bom/target/release/build-bom generate-bitcode --clang /usr/bin/clang \
  --suppress-automatic-debug -- ./scripts/test_translator.py tests --log ERROR \
  --only-directories "(arrays|builtins|casts|comments|conditionals|enums|example|floats|gotos|ints|items|longdouble|loops|macros|misc|modules|pointers|statics|structs|unions)"

ARG BITCODE_DIR="/c2rust-x86-64-bitcode"
RUN mkdir ${BITCODE_DIR}
WORKDIR /c2rust/tests
RUN for f in `find . -name "*.bc"`; do cp --parents $f ${BITCODE_DIR}; done
