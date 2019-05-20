#!/bin/sh

export CC=aarch64-linux-gnu-gcc
export LD=aarch64-linux-gnu-ld
export AR=aarch64-linux-gnu-ar

cd valgrind-3.15.0

INSTALL_DIR=`pwd`/../install

./autogen.sh
./configure --prefix=${INSTALL_DIR} \
			--host=aarch64-unknown-linux \
			--enable-only64bit
make -j4
make -j4 install


