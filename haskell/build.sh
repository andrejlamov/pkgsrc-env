#!/bin/sh
GHC_VERSION="7.6.2"
TARGET=$(readlink -f ../target/pkg)

wget http://www.haskell.org/ghc/dist/$GHC_VERSION/ghc-$GHC_VERSION-x86_64-unknown-linux.tar.bz2
tar xvf ghc-$GHC_VERSION-x86_64-unknown-linux.tar.bz2
export LD_LIBRARY_PATH=$TARGET/lib
cd ghc-$GHC_VERSION && ./configure --prefix=$TARGET && make install
echo "export LD_LIBRARY_PATH=$TARGET/lib" >> ../../setup.sh

