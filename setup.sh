#Make the binaries in target visible

TARGET_BIN=$(dirname $(readlink -f $0))/target/pkg/bin

export PATH=$TARGET_BIN:$PATH
