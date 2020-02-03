#!/bin/bash

set -v -x

if [[ "$OSTYPE" == "darwin"* ]]; then
    export CPPFLAGS="-D_FORTIFY_SOURCE=2 -mmacosx-version-min=10.9 -isystem $PREFIX/include"
    ./compile.sh
    mkdir -p $PREFIX/bin/
    mv output/bazel $PREFIX/bin
else
    ./compile.sh
    mkdir -p $PREFIX/bin/
    mv output/bazel $PREFIX/bin
fi