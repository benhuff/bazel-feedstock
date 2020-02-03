#!/bin/bash

set -v -x

if [[ "$OSTYPE" == "darwin"* ]]; then
    set CMAKE_OSX_DEPLOYMENT_TARGET = '10.10'
    ./compile.sh
    mkdir -p $PREFIX/bin/
    mv output/bazel $PREFIX/bin
else
    ./compile.sh
    mkdir -p $PREFIX/bin/
    mv output/bazel $PREFIX/bin
fi