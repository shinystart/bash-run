#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

sudo DEBIAN_FRONTEND=noninteractive apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver

sudo apt install ubuntu-desktop -y

sudo apt install screen -y

wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

sudo apt install ./chrome-remote-desktop_current_amd64.deb

sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

sudo service lightdm stop
