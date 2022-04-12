#!/usr/bin/env bash 
# @author	Guilherme Paulino <ra117119 @students.ic.unicamp.br>

set -x

mkdir -p build/Relase
mkdir -p build/Debug

cd build/Relase
cmake ../.. -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON -DCMAKE_BUILD_TYPE=Release
make -j$(( $(nproc) + 1 ))

cd ../Debug
cmake ../.. -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON -DCMAKE_BUILD_TYPE=Debug
make -j$(( $(nproc) + 1 ))

