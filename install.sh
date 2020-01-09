# Installation

## Uninstall any available old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

## SET UP THE REPOSITORY

sudo apt-get update

### Install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

### Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

### Use the following command to set up the stable repository.
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

### Install the latest version of Docker Engine - Community and containerd
apt-cache madison docker-ce 5:18.09.1~3-0~ubuntu-xenial | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages

### Verify that Docker Engine - Community is installed correctly by running the hello-world image.
sudo docker run hello-world
