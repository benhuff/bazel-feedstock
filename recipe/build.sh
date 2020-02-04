#!/bin/bash

set -v -x

./compile.sh
mkdir -p $PREFIX/bin/
mv output/bazel $PREFIX/bin
