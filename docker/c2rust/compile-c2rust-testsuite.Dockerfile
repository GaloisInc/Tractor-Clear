FROM compile-c2rust AS compile-c2rust-testsuite

# Note: in my testing setup, clang in the Docker image will fail when passed `-march=native` because
# it will detect "athlon-xp", which is not supported by clang...  The wrapper just replaces "native"
# with "x86-64" which should work.
COPY clang-wrapper.sh /
RUN ln -s /clang-wrapper.sh /usr/bin/clang

WORKDIR /
RUN git clone https://github.com/immunant/c2rust-testsuite.git
WORKDIR /c2rust-testsuite
# main as of Sep 25, 2025
ARG C2RUST_TESTSUITE_COMMIT=b94f771f6d05296562fed92361f98f38ce15a678
RUN git checkout ${C2RUST_TESTSUITE_COMMIT}
RUN git submodule update --init

WORKDIR /c2rust-testsuite
RUN python3 -m venv venv
ENV PATH="/c2rust-testsuite/venv/bin:$PATH"
RUN pip install scan-build uv

RUN apt install -y \
  bison \
  libbrotli-dev \
  libbz2-dev \
  libdb-dev \
  libexpat1-dev \
  libgdbm-dev \
  libidn2-dev \
  libldap2-dev \
  liblzma-dev \
  # WARNING: this actually installs version 6
  libncurses5-dev \
  libnghttp2-dev \
  libpcre3-dev \
  libpsl-dev \
  libreadline-dev \
  librtmp-dev \
  libsqlite3-dev \
  libtool \
  libzstd-dev \
  rcs \
  ruby \
  tcl-dev \
  tk-dev

COPY c2rust-testsuite.patch /c2rust-testsuite/
RUN git apply c2rust-testsuite.patch

ENV PATH="/c2rust/target/release/:$PATH"

# Note: being selective here as some test suites require very old versions of
# software that are annoying to install.
# For instance, snudown requires Python 2.7 which has been deprecated since 2020 and is no longer
# easily available in Ubuntu packages.

# Had a build error, did not investigate further
# RUN ./test.py curl

# OK
RUN ./test.py json-c

# Had a build error, did not investigate further
# RUN ./test.py libxml2

# Something about missing Cargo.toml
# RUN ./test.py lua

# OK
RUN ./test.py nginx

# Type errors in the Rust output
# RUN ./test.py python2

# Some build error
# RUN ./test.py redis

# configure step fails
# RUN ./test.py ruby

# Too old, pain to build under recent Ubuntu
# RUN ./test.py snudown

# ?
RUN ./test.py zstd
