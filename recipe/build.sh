#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    set -v -x
    sh compile.sh
    mv ${BAZEL} $PREFIX/bin
else
    set -v -x
    sh compile.sh
    mv ${BAZEL} $PREFIX/bin
fi