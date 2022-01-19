#!/bin/bash

# Name   : Docker Installer 

# Author : W.S.Kaushalya

# Date   : 01/19/2022

# Description : This will install Docker engine in any Ubuntu based desktop.


# Uninstall old versions

sudo apt-get remove docker docker-engine docker.io containerd runc


# Set up the repository

sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


# Add Docker’s official GPG key

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg


# Set up the stable repository

 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# Install Docker Engine

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io


# Verify that Docker Engine is installed correctly by running the hello-world image.

sudo docker run hello-world


# install Docker compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

