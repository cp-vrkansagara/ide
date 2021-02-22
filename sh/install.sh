#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
if [ "$(whoami)" != "root" ]; then
    SUDO=sudo
fi


${SUDO} apt-get install -y zsh guake ufw geany 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing network realated stuf "
${SUDO} apt-get install -y iputils-ping net-tools lsof nmap whois

echo "System related stuff "
${SUDO} apt-get install -y elinks htop ctags vim curl lsb-release

echo "Install desktop manager"
${SUDO} apt-get install -y xfce4 xfce4-goodies

echo "Application related stuff..."
${SUDO} apt-get install -y git meld vim-gtk ack silversearcher-ag


${SUDO} apt-get autoremove

echo "[DONE] My required linux binary installation id done."

exit 0
