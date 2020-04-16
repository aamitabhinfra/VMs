echo "Update / Upgrade Ubuntu"
    export DEBIAN_FRONTEND=noninteractive
    sudo apt-get update -y 1> apt.out 2> apt.err
    sudo apt-get upgrade -y 1> apt.out 2> apt.err
