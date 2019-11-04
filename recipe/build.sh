#!/bin/bash

cmake \
    -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_INSTALL_PREFIX=$PREFIX \
    -D CMAKE_PREFIX_PATH=$PREFIX \
    -D PYTHON_EXECUTABLE=$PYTHON \
    -D USE_PYTHON=ON \
    .

make -j$CPU_COUNT
make install
