#!/bin/bash

set -v -x

if [[ "$OSTYPE" == "darwin"* ]]; then
    set CLANG_LINK_OBJC_RUNTIME = NO;
    set CMAKE_OSX_DEPLOYMENT_TARGET = ${CMAKE_SYSTEM_VERSION};
    sh compile.sh
    mv output/bazel $SRC_DIR
else
    sh compile.sh
    mv output/bazel $SRC_DIR
fi