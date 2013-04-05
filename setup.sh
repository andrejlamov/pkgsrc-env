#Make the binaries in target visible

#Source this file from any position and get correct target-path
TARGET_BIN=$(dirname $(readlink -f $0))/target/pkg/bin

export PATH=$TARGET_BIN:$PATH
