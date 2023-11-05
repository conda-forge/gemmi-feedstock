#!/bin/bash
set -e

cmake ${CMAKE_ARGS} \
    -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_INSTALL_PREFIX=$PREFIX \
    -D CMAKE_PREFIX_PATH=$PREFIX \
    -D Python_EXECUTABLE=$PYTHON \
    -D USE_PYTHON=ON \
    -D CMAKE_CXX_VISIBILITY_PRESET=hidden \
    .

make -j$CPU_COUNT
make install
