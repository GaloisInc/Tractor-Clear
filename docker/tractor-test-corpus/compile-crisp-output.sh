#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -x

LIBS=(
  "bin2hex"
  "bitwriter_add"
  "collided"
  "contrast_ratio"
  "crc16"
  "dequantize_granule"
  "div_euclid"
  "encode_quant"
  "flac_validate"
  "flip_horizontal"
  "float2half"
  "gaussian_kernel"
  "half2float"
  "hdr_bitrate"
  "hdr_compare"
  "hex2bin"
  "hsl_to_rgb"
  "hsv_to_rgb"
  "ima_parse"
  "ldexp_q2"
  "max_size_frame"
  "md5_digest"
  "merge_sort"
  "next_double"
  "normalize"
  "pow43"
  "premultiply"
  "read_side_info"
  "rev16"
  "rgb_to_hsv"
  "synth_pair"
  "tfm"
  "to_barycentric"
  "tritanopia"
  "update_frame_header"
  "update_md5"
  "wcscat"
)

(
  echo "CRISP_LINKED_DIR: ${CRISP_LINKED_DIR}"
  echo "TARGET: ${TARGET}"
  echo "RUSTFLAGS: ${RUSTFLAGS}"
  echo "CARGO_BUILD_MODE: ${CARGO_BUILD_MODE}"

  for lib in ${LIBS[@]}; do
    (
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
      llvm-link-20 *.ll -o linked.bc
      llvm-dis-20 linked.bc -o linked.ll
      cp linked.ll ${CRISP_LINKED_DIR}/${lib}-linked.ll;
      # Note: building the binary does not make sense for the libs, so it's annoying, would need
      # to inject some special main
      # echo "========== MINIFYING BITCODE ==========" &&
      # # Let's also build the binary, to be able to use gdb
      # opt-20
      #   -passes='internalize,globalopt,globaldce,adce,dce'
      #   -internalize-public-api-list='main'
      #   linked.bc -o opt.bc &&
      # echo "========== DISASSEMBLING BITCODE ==========" &&
      # llvm-dis-20 opt.bc -o opt.ll &&
      # echo "========== COMPILING IR ==========" &&
      # clang-20 opt.ll -o bin &&
      # echo "========== COPYING BINARY ==========" &&
      # cp bin ${CRISP_LINKED_DIR}/${lib}-bin;
    )
  done
)
