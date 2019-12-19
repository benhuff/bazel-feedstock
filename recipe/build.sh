#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    set OTHER_LDFLAGS = "-Xlinker -U -Xlinker _objc_readClassPair"
    set -v -x
    sh compile.sh
else
    set -v -x
    sh compile.sh
fi