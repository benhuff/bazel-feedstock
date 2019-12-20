#!/bin/bash

set -v -x
sh compile.sh
chmod +x output/bazel
mv output/bazel $PREFIX/bin
