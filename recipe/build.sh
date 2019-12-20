#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    set -v -x
    sh compile.sh
    mv output/bazel $PREFIX/bin
else
    set -v -x
    sh compile.sh
    mv output/bazel $PREFIX/bin
fi