FROM ubuntu:24.04@sha256:353675e2a41babd526e2b837d7ec780c2a05bca0164f7ea5dbbd433d21d166fc AS compile-c2rust

RUN apt update -y --fix-missing
RUN apt install -y build-essential clang-18 cmake file git libclang-dev libssl-dev llvm pkg-config python3 python3-venv rustup tree vim
RUN rustup default stable

RUN git clone https://github.com/immunant/c2rust.git
WORKDIR /c2rust
# main as of Sep 25, 2025
ARG C2RUST_COMMIT=76e2e5fd1a55728e24f3067c8e6a8b7823b15298
RUN git checkout ${C2RUST_COMMIT}

# This step takes close to an hour!
RUN cargo build
RUN cargo build --release
