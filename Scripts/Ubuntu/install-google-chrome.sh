echo "Installing Chrome"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i ./google-chrome-stable_current_amd64.deb > /dev/null
    sudo apt-get -f -y install > /dev/null