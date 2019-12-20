#!/bin/bash

set -v -x
sh compile.sh

for entry in "output"/*
do
  echo "$entry"
done

mv output/bazel $PREFIX/bin
