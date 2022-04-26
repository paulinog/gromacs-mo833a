# Atividade 4

### Objetivo

Traçar o perfil da aplicação com diferentes ferramentas (p.ex: `perf` e `valgrind --callgraph`).

### Metodologia

1. Compilar o código no modo Release 
2. Traçar o perfil da aplicação quando o comando `./gmx mdrun -v -deffnm em` for executado.

## Experimento

### Como preparar ambiente

Siga os passos [deste tutorial](https://docs.docker.com/get-started/) para realizar o download e instalar o Docker em seu computador.

Execute o script a partir desse diretório para subir o ambiente: 

```sh
   docker build -t mo833hpc:perf .
```

### Como rodar

Para rodar o experimento dessa atividade, execute o script a partir da raiz deste repositório: 

```sh
   sudo ./experiments/ativ-4-exp-1/docker_run.sh
```

---


                          Guilherme Paulino

                       University of Campinas

