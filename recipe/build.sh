#!/bin/bash

set -v -x

if [[ "$OSTYPE" == "darwin"* ]]; then
    set CLANG_LINK_OBJC_RUNTIME=NO
    sh compile.sh
    mv output/bazel $PREFIX/bin
    chmod +x $PREFIX/bin/bazel
else
    sh compile.sh
    mv output/bazel $PREFIX/bin
    chmod +x $PREFIX/bin/bazel
fi