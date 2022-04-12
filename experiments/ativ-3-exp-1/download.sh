#!/usr/bin/env bash 
# @author	Guilherme Paulino <ra117119 @students.ic.unicamp.br>

set -x

SRC_DATA=experiments/ativ-3-exp-1/data

mkdir -p $SRC_DATA

cd $SRC_DATA

wget https://www.ic.unicamp.br/~edson/disciplinas/mo833/2021-1s/anexos/6LVN.pdb

wget https://www.ic.unicamp.br/~edson/disciplinas/mo833/2021-1s/anexos/ions.mdp

cd -

