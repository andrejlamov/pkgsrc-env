#!/bin/bash

#Make the binaries in target visible

#Source this file from any position and get correct target-path
TARGET=$(dirname $(readlink -f ${BASH_SOURCE[0]}))/target
TARGET_BIN=$TARGET/pkg/bin
TARGET_SBIN=$TARGET/pkg/sbin

export PATH=$TARGET_BIN:$TARGET_SBIN:$PATH
