#!/usr/bin/env bash 
# @file     docker_run.sh
# @author	Guilherme Paulino <ra117119 @students.ic.unicamp.br>

echo "[docker_run]"

if [[ $(id -u) -ne 0 ]]; then
    echo "Please, run as root";
    exit 1;
fi

docker run --privileged --rm -v ${PWD}:${PWD} \
    -w ${PWD} -it mo833hpc:perf \
    ./experiments/ativ-4-exp-1/run
