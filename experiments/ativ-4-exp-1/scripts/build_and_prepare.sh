# @file     build_and_prepare.sh
# @author	Guilherme Paulino <ra117119 @students.ic.unicamp.br>

echo "[build_and_prepare] $1"

if [[ ! -d build/$1 ]]; then
    source ${DIR_ATIV4}/scripts/build.sh $1
else
    echo "Skip, build/$1 already exists...";
fi

if [[ ! -d "${SRC_DATA}/$1/" ]]; then
    source ${DIR_ATIV4}/scripts/process_gmx.sh $1
else
    echo "Skip, environment already prepared...";
fi
