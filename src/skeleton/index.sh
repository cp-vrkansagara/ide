#!/usr/bin/env bash
set -e

if [ "$(whoami)" != "root" ]; then
	SUDO=sudo
fi

CURRENT_DATE=$(date "+%Y%m%d%H%M%S")
export DEBIAN_FRONTEND=noninteractive

echo $CURRENT_DATE
echo $(date)
echo "Current home folder is " $(pwd)

echo "Ctrl+s to freeze output/error and press Ctrl+q to continue script and press Ctrl+c to cancle the program."
for i in {1..10}; do echo "$i"; sleep 0.3; done
