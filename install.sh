# Installation

## Uninstall any available old versions

sudo apt-get remove docker docker-engine docker.io containerd runc


## curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

## Add the Docker repository to APT sources

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

## Update the packages

sudo apt-get update

## Install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

## Use the following command to set up the stable repository

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-cache policy docker-ce

## Install Docker

sudo apt-get install -y docker-ce


## Check docker status

sudo systemctl status docker
