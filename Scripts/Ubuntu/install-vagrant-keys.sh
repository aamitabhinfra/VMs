echo "Installing Vagrant ssh keys"
    export DEBIAN_FRONTEND=noninteractive
    sudo chown -R vagrant:vagrant /home/vagrant/*
    mkdir /home/vagrant/Desktop
    sudo cp /vagrant/id_rsa ~/.ssh
    sudo cp /vagrant/id_rsa.pub ~/.ssh
    sudo cp /vagrant/known_hosts ~/.ssh
    eval `ssh-agent -s`
    ssh-add ~/.ssh/id_rsa