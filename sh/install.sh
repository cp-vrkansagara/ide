#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
if [ "$(whoami)" != "root" ]; then
    SUDO=sudo
fi


${SUDO} apt-get install -y zsh guake ufw geany 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

${SUDO} apt-get install -y elinks htop lsof nmap git lsof ctags vim curl lsb-release net-tools
${SUDO} apt-get install -y xfce4 xfce4-goodies


${SUDO} apt-get autoremove

echo "[DONE] My required linux binary installation id done."

exit 0
