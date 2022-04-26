# Activity 1
# @course MO833 - IC/Unicamp
# @author Guilherme Paulino
FROM ubuntu:18.04
LABEL maintainer="ra117119@students.ic.unicamp.br"
LABEL version="1.0"
LABEL description="Activity 4 for the \
MO833 course at IC/UNICAMP."
# Update Ubuntu reporitories and install download tool
RUN apt update
RUN apt install -y wget
# Install compilers 
RUN apt install -y build-essential 
RUN  DEBIAN_FRONTEND=noninteractive \
    apt install -y cmake
# Install profiling tools
RUN apt install -y linux-tools-common \
    linux-tools-generic linux-tools-`uname -r`
RUN apt install -y valgrind
