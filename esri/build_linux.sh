#!/usr/bin/env bash
set -ex

libbacktrace_hash_commit="b9e4006" #modify if updating the library. It should be the short hash commit used for building the library

rm ./build -fdr
mkdir ./build
cd ./build
../../configure --prefix=$(echo $(pwd))
make install

arch_uname=$(uname -m)
arch=""
if [[ ${arch_uname} == "x86_64" ]]; then
  arch="x64"
elif [[ ${arch_name} == "aarch64" || ${arch_name} == "arm64" ]]; then
  arch="arm64"
else
  echo "unrecognized architecture, stopping script."
  exit 1;
fi

# create directory used for zipped file
mkdir -p ./${libbacktrace_hash_commit}/lib/${arch}
mv ./lib/libbacktrace.a ./${libbacktrace_hash_commit}/lib/${arch}
mv ./include ./${libbacktrace_hash_commit}

# build both x64 and arm64 architecture
# manually zip them together and upload them onto the zip server
echo "manually build x64 and arm64 and zip from esri/build/libbacktrace/${libbacktrace_hash_commit} into libbacktrace-${libbacktrace_hash_commit}.zip"
