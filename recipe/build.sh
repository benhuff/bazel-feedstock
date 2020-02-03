#!/bin/bash

set -v -x

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo ${CXX}
    set CLANG_LINK_OBJC_RUNTIME = NO;
    set CMAKE_OSX_DEPLOYMENT_TARGET = ${CXX};
    ./compile.sh
    mv output/bazel $PREFIX/bin
else
    ./compile.sh
#    mv output/bazel $PREFIX/bin
fi