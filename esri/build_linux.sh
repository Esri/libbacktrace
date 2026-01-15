#!/usr/bin/env bash
set -ex

rm ./build -fdr
mkdir ./build
cd ./build
../../configure --prefix=$(echo $(pwd)) CC="/usr/local/rtc/llvm/19.1.2/bin/clang" CXX="/usr/local/rtc/llvm/19.1.2/bin/clang++"
make install