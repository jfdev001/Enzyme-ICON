FROM ubuntu:22.04

# Avoid timezone prompts
ENV DEBIAN_FRONTEND=noninteractive

# generic setup 
RUN apt-get update && apt-get install -y sudo software-properties-common wget cmake gcc g++ ninja-build pip && \
    wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB && \
    apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB && \
    echo "deb https://apt.repos.intel.com/oneapi all main" | tee /etc/apt/sources.list.d/oneAPI.list && \
    pip install lit && \
    useradd -m -G sudo -s /bin/bash user && \
    echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Allow scripts to detect this is a container 
ENV IS_CONTAINER=TRUE

# Define the user and the start point for the user 
USER user
WORKDIR /home/user
