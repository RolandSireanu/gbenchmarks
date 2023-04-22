#!/bin/bash

cd /project
mkdir -p build && cd ./build
cmake -Dbenchmark_DIR=/benchmark/build ..
make all -j4
find  . -maxdepth 1  -perm 0755 -type f -exec '{}' ';'


