#!/bin/bash

set -v -x

if [[ "$OSTYPE" == "darwin"* ]]; then
    export MACOSX_DEPLOYMENT_TARGET=10.12
    export CPPFLAGS="-D_FORTIFY_SOURCE=2 -mmacosx-version-min=$MACOSX_DEPLOYMENT_TARGET -isystem $PREFIX/include"
    ./compile.sh
    mkdir -p $PREFIX/bin/
    mv output/bazel $PREFIX/bin
else
    ./compile.sh
    mkdir -p $PREFIX/bin/
    mv output/bazel $PREFIX/bin
fi