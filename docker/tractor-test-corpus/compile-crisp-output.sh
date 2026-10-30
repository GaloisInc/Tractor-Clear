#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -x

: "${LLVM_LINK:=llvm-link-21}"
: "${LLVM_DIS:=llvm-dis-21}"

(
  echo "CRISP_LINKED_DIR: ${CRISP_LINKED_DIR}"
  echo "TARGET: ${TARGET}"
  echo "RUSTFLAGS: ${RUSTFLAGS}"
  echo "CARGO_BUILD_MODE: ${CARGO_BUILD_MODE}"

  for folder in *_lib/; do
    (
      lib=`basename ${folder} _lib`
      echo "===== Working on ${lib} ====="
      cd ${lib}_lib/translated_rust

      CARGO_TERM_VERBOSE=true CC=/usr/local/bin/clang \
        CARGO_BUILD_TARGET="${TARGET}" RUSTFLAGS="${RUSTFLAGS} -C link-arg=-nostartfiles" \
        cargo build --${CARGO_BUILD_MODE}

      mkdir linked
      cp ./target/x86_64-unknown-linux-gnu/${CARGO_BUILD_MODE}/deps/*.ll ./linked
      cd linked
      # Note: if we ever get dead_on_return in the LLVM IR, we can use this to remove it:
      # RUN sed -i 's/ dead_on_return//g' *.ll
      ${LLVM_LINK} *.ll -o linked.bc
      ${LLVM_DIS} linked.bc -o linked.ll
      cp linked.ll ${CRISP_LINKED_DIR}/${lib}-linked.ll;
      # Note: building the binary does not make sense for the libs, so it's annoying, would need
      # to inject some special main
      # echo "========== MINIFYING BITCODE ==========" &&
      # # Let's also build the binary, to be able to use gdb
      # ${LLVM_OPT}
      #   -passes='internalize,globalopt,globaldce,adce,dce'
      #   -internalize-public-api-list='main'
      #   linked.bc -o opt.bc &&
      # echo "========== DISASSEMBLING BITCODE ==========" &&
      # ${LLVM_DIS} opt.bc -o opt.ll &&
      # echo "========== COMPILING IR ==========" &&
      # ${CLANG_BIN:-clang-21} opt.ll -o bin &&
      # echo "========== COPYING BINARY ==========" &&
      # cp bin ${CRISP_LINKED_DIR}/${lib}-bin;
    )
  done
)
