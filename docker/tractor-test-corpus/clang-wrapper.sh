#!/bin/bash

# This wrapper solves a weird bug in the Docker image's clang where it does not understand
# `-march=native` correctly.  Instead, being explicit that this means `x86-64`.  We also add
# `--save-temps` to dump bitcode.

args=()

for arg in "$@"; do
  if [ "$arg" = "-march=native" ]; then
    args+=("-march=x86-64")
  else
    args+=("$arg")
  fi
done
args+=("--save-temps")

exec /usr/bin/clang-20 "${args[@]}"
