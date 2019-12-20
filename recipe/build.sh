#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    set OTHER_LDFLAGS = "-Xlinker -U -Xlinker _objc_readClassPair"
    set -v -x
    sh compile.sh
    mv output/bazel $PREFIX/bin
else
    set -v -x
    sh compile.sh
    mv output/bazel $PREFIX/bin
    cd $PREFIX/bin
    echo ls
fi