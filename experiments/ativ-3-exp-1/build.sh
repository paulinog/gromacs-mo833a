# @file     build.sh
# @author	Guilherme Paulino <ra117119 @students.ic.unicamp.br>

echo "[build] $1"

mkdir -p build/$1
cd build/$1
cmake ../.. -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON -DCMAKE_BUILD_TYPE=$1
make -j$(( $(nproc) + 1 ))
cd -
