#!/bin/bash
set -e

cmake ${CMAKE_ARGS} \
    -G Ninja \
    -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_INSTALL_PREFIX=$PREFIX \
    -D CMAKE_PREFIX_PATH=$PREFIX \
    -D PYTHON_EXECUTABLE=$PYTHON \
    -D USE_PYTHON=ON \
    -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
    .

make -j$CPU_COUNT
make install
