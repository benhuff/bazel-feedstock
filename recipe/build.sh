#!/bin/bash

set -v -x
sh compile.sh
mv output/bazel $PREFIX/bin

for entry in $PREFIX/bin/*
do
  echo "$entry"
done
