#!/bin/bash

# With the musl backend, cargo overwrites our wanted --emit set in RUSTFLAGS.  So trying to force it
# at this level instead.
args=()
for arg in "$@"; do
    if [[ "$arg" == --emit=* ]]; then
        arg="${arg},llvm-ir"
    fi
    args+=("$arg")
done

exec /usr/bin/rustc "${args[@]}"
