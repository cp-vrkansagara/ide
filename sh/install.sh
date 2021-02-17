#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

if [ "$(whoami)" != "root" ]; then
    SUDO=sudo
fi

${SUDO} apt-get install -y elinks htop top lsof nmap git lsof ctags vim curl
${SUDO} apt-get install -y zsh guake ufw geany

${SUDO} sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "[DONE] My required linux binary installation id done."
exit 0
