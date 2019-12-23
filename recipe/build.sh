#!/bin/bash

set -v -x

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo ${CXX}
    set CLANG_LINK_OBJC_RUNTIME = NO;
    set CMAKE_OSX_DEPLOYMENT_TARGET = ${CXX};
    sh compile.sh
    mv output/bazel $PREFIX/bin
else
    export BAZEL_LINKOPTS="-static-libgcc:-static-libstdc++:-l%:libstdc++.a:-lm:-Wl,--disable-new-dtags"
    sh compile.sh
    mv output/bazel $PREFIX/bin
    readelf -d $PREFIX/bin/bazel
fi