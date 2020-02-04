#!/bin/bash

set -v -x

if [ $(uname) == Darwin ]; then
    # Darwin has only clang, must use clang++ from clangdev
    # All these must be picked up from $PREFIX/bin
    export CC=clang
    export CXX=clang++
    export MACOSX_DEPLOYMENT_TARGET=10.12
    ./compile.sh
    mkdir -p $PREFIX/bin/
    mv output/bazel $PREFIX/bin
else
    ./compile.sh
    mkdir -p $PREFIX/bin/
    mv output/bazel $PREFIX/bin
fi
