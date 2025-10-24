#!/bin/bash

# @:1:1 means "start at index 1, grab 1"
# @:2   means "start at index 2, grab everything"
# The idea is to keep the cargo command, "build", next to "cargo", then insert our stuff
exec /usr/bin/cargo ${@:1:1} "-Z" "build-std=alloc,core,std" ${@:2}
