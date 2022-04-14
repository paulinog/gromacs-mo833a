# @file     simulate_gmx.sh
# @author	Guilherme Paulino <ra117119 @students.ic.unicamp.br>

echo "[simulate_gmx]"

GMX="${PWD}/build/$1/bin/gmx"
DB="${DIR_ATIV3}/data/$1-$(date +%Y%m%d-%H%M%S)"

${GMX} mdrun -v -deffnm em 
