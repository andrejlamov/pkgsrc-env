#!/bin/sh

export TARGET=`pwd`/target
export SH=/bin/bash #shell must be BSD-compatible

wget http://ftp.netbsd.org/pub/pkgsrc/current/pkgsrc.tar.gz
tar xzvf pkgsrc.tar.gz
rm pkgsrc.tar.gz

#TARGET is the main dir where packages will be installed 
./pkgsrc/bootstrap/bootstrap --unprivileged --prefix=$TARGET/pkg --pkgdbdir=$TARGET/db/pkg --sysconfdir=$TARGET/etc --varbase=$TARGET/var

target/pkg/sbin/pkg_admin -K target/db/pkg fetch-pkg-vulnerabilities

source setup.sh
