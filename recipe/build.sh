#!/bin/bash

set -v -x

if [ $(uname) == Darwin ]; then
    # Darwin has only clang, must use clang++ from clangdev
    # All these must be picked up from $PREFIX/bin
    export CC=x86_64-apple-darwin14.0.0-clang
    export CXX=x86_64-apple-darwin14.0.0-clang++
    ./compile.sh
    mkdir -p $PREFIX/bin/
    mv output/bazel $PREFIX/bin
else
    ./compile.sh
    mkdir -p $PREFIX/bin/
    mv output/bazel $PREFIX/bin
fi
