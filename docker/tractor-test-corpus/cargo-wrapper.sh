#!/bin/bash

# This wrapper forces cargo to also build the std modules alloc, core, and std, so that it generates
# bitcode for them.

# @:1:1 means "start at index 1, grab 1"
# @:2   means "start at index 2, grab everything"
# The idea is to keep the "cargo command", e.g. `build`, next to `cargo`, then insert our stuff.
# Note: supposedly std implies core and alloc, but marking them explicitly in case this changes in
# the future.
# Note: panic_immediate_abort supposedly gets rid of all the unwinding logic and just aborts on
# panic, which is fine for our current purposes.
exec /usr/bin/cargo ${@:1:1} \
  "-Z" "build-std=alloc,core,panic_abort,std" \
  # Disabling this now as it creates issues
  # "-Z" "build-std-features=panic_immediate_abort" \
  ${@:2}
