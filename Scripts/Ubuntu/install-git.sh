echo "Installing Git"
    export DEBIAN_FRONTEND=noninteractive
    apt-get install git -y > /dev/null
    git config --global user.name "Amitabh Arora"
    git config --global user.email "amitabh.arora@gmail.com"
    git config --list