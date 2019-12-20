#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    xcodebuild "OTHER_LDFLAGS=-Xlinker -U -Xlinker _objc_readClassPair"
    set -v -x
    sh compile.sh
    mv ${BAZEL} $PREFIX/bin
else
    set -v -x
    sh compile.sh
    mv ${BAZEL} $PREFIX/bin
fi