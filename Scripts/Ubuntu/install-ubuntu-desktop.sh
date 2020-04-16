# Reference: https://linoxide.com/linux-how-to/how-install-gui-ubuntu-server-guide/
# Reference for dpkg error: https://fixyacloud.wordpress.com/2020/01/26/dpkg-reconfigure-unable-to-re-open-stdin-no-file-or-directory/
echo "Installing tasksel"
    export DEBIAN_FRONTEND=noninteractive
    sudo apt-get install tasksel -y 1> apt.out 2> apt.err

echo "Installing Ubuntu Desktop"
    sudo tasksel install ubuntu-desktop
    # sudo service lightdm start

    # Reference: https://askubuntu.com/questions/702628/ubuntu-hyper-v-guest-display-resolution-win-10-15-04
    # For changing the resolution make the following change in /etc/default/grub
    # Replace line
    #       GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
    #               with
    #       GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=hyperv_fb:1920x1080"
    # and then issue the command
    #       sudo update-grub
echo "set resolution to 1920x1080"
    sudo sed -i.bak 's/quiet/quiet splash video=hyperv_fb:1920x1080/' /etc/default/grub
    sudo update-grub