# @file     process_gmx.sh
# @author	Guilherme Paulino <ra117119 @students.ic.unicamp.br>

echo "[process_gmx]"

GMX="${PWD}/build/$1/bin/gmx"
EXP="${DIR_ATIV3}/data/"
PDB="6LVN.pdb"
IONS="ions.mdp"

if [[ ! -x $GMX ]]; then
  echo "[ERROR]: Failed to execute Gmx."; 
  exit 1;
fi

if [[ ! -e $EXP/$PDB || ! -e $EXP/$IONS ]]; then
  echo "[ERROR]: Failed to find input files."; 
  exit 1;
fi

cd ${EXP}
echo '15' | $GMX pdb2gmx -f $PDB -o 6LVN_processed.gro -water spce
$GMX editconf -f 6LVN_processed.gro -o 6LVN_newbox.gro -c -d 1.0 -bt cubic
$GMX solvate -cp 6LVN_newbox.gro -cs spc216.gro -o 6LVN_solv.gro -p topol.top
$GMX grompp -f $IONS -c 6LVN_solv.gro -p topol.top -o ions.tpr
echo '13' | $GMX genion -s ions.tpr -o 6LVN_solv_ions.gro -p topol.top -pname NA -nname CL -neutral
$GMX grompp -f $IONS -c 6LVN_solv_ions.gro -p topol.top -o em.tpr
cd -
