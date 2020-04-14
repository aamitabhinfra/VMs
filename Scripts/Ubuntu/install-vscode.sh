echo "Installing VSCode"
    sudo apt-get update -y > /dev/null
    sudo apt-get upgrade -y > /dev/null
    sudo apt-get install gnupg2 -y
    sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt-get update -y > /dev/null
    sudo apt-get install -y code > /dev/null