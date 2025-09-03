#!/bin/bash

args=()

for arg in "$@"; do
  if [ "$arg" = "-march=native" ]; then
    args+=("-march=x86-64")
  else
    args+=("$arg")
  fi
done

exec /usr/bin/clang-18 "${args[@]}"
