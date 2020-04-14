#!/bin/bash

# Reference: https://medium.com/@tonyeung85/minimal-vagrant-ubuntu-desktop-for-development-248c173cc5a2

echo "Provisioning virtual machine..."

echo "Update packages"
    apt-get update -y > /dev/null
    apt-get upgrade -y > /dev/null
    apt-get install software-properties-common -y > /dev/null

echo "Installing Git"
    apt-get install git -y > /dev/null
    git config --global user.name "Amitabh Arora"
    git config --global user.email "amitabh.arora@gmail.com"
    git config --list

# echo "Installing VSCode"
#    sudo apt-get update -y > /dev/null
#    sudo apt-get upgrade -y > /dev/null
#    sudo apt-get install gnupg2 -y > /dev/null
#    sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
#    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
#    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
#    sudo apt-get update -y > /dev/null
#    sudo apt-get install -y code > /dev/null

# echo "Installing Ubuntu Desktop"
#     sudo apt install tasksel
#     sudo tasksel install ubuntu-desktop
    # sudo apt-get install -y --no-install-recommends ubuntu-desktop > /dev/null

echo "Installing Chrome"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt-get -f -y install > /dev/null

# echo "Installing Vagrant ssh keys"
#     sudo chown -R vagrant:vagrant /home/vagrant/*
#     mkdir /home/vagrant/Desktop
#     sudo cp /vagrant/id_rsa ~/.ssh
#     sudo cp /vagrant/id_rsa.pub ~/.ssh
#     sudo cp /vagrant/known_hosts ~/.ssh
#     eval `ssh-agent -s`
#     ssh-add ~/.ssh/id_rsa

# https://linuxize.com/post/how-to-install-and-use-docker-on-ubuntu-18-04/
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
echo "Installing Docker"
    apt-get update -y > /dev/null
    apt-get install apt-transport-https ca-certificates curl -y
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    apt-get update -y > /dev/null
    apt-cache policy docker-ce
    apt-get install docker-ce -y
    systemctl status docker
    docker -v

# echo "Shutdown for UI to take effect"
#     sudo shutdown -r now
