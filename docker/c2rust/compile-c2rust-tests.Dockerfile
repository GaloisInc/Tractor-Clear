FROM compile-c2rust AS compile-c2rust-tests

WORKDIR /c2rust
RUN python3 -m venv venv
ENV PATH="venv/bin:$PATH"
RUN pip install plumbum psutil toml

# Note: in my testing setup, clang in the Docker image will fail when passed `-march=native` because
# it will detect "athlon-xp", which is not supported by clang...  The wrapper just replaces "native"
# with "x86-64" which should work.
COPY clang-wrapper.sh /
RUN ln -s /clang-wrapper.sh /usr/bin/clang
# This patch makes the testing infrastructure emit bitcode files
COPY c2rust-emit-llvm.patch /c2rust/
# This patch makes it so that the c2rust tests don't pass "-march=native" as it breaks under Docker
COPY c2rust-march.patch /c2rust/
RUN git apply c2rust-emit-llvm.patch c2rust-march.patch
RUN RUSTFLAGS="--emit=llvm-bc,link" ./scripts/test_translator.py tests --log ERROR --only-directories "(arrays|builtins|casts|comments|conditionals|enums|example|floats|gotos|ints|items|longdouble|loops|macros|misc|modules|pointers|statics|structs|unions)"

ARG BITCODE_DIR="/c2rust-x86-64-bitcode"
RUN mkdir -p ${BITCODE_DIR}
WORKDIR /c2rust/tests
RUN for f in `find . -name "*.bc"`; do cp --parents $f ${BITCODE_DIR}; done

ARG LLVMIR_DIR="/c2rust-x86-64-llvmir"
RUN mkdir -p ${LLVMIR_DIR}
WORKDIR ${BITCODE_DIR}
RUN for f in `find . -name "*.bc"`; do mkdir -p ${LLVMIR_DIR}/`dirname $f`; llvm-dis -o ${LLVMIR_DIR}/`dirname $f`/`basename $f ".bc"`.ll $f; done

# Note on build-bom: initially, I tried to use build-bom here, but it is proving too painful to use
# for what we're doing, for many reasons:
# 1. It had issues with clang -cc1 that I tried to fix.
# 2. It does not handle calls like "clang -c a.c b.c c.c d.c" well.  This had me modify the original
# build system, which is what build-bom is trying to help you not do.
# 3. It seems to behave slightly differenly under Docker in a hard to understand way: for instance,
# it was missing some clang invocations under Docker that it was picking up on under QEMU.
# 4. It depends on pete which seems somewhat abandoned by its author, thus feels risky to keep
# building upon.
# For now, deciding to instead do manual patching.
