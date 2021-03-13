#!/usr/bin/env bash
set -e

CURRENT_DATE=$(date "+%Y%m%d%H%M%S")

echo $CURRENT_DATE
echo $(date)
echo "Current home folder is " $(pwd)


echo "Ctrl+s to freeze output/error and press Ctrl+q to continue script and press Ctrl+c to cancle the program."
for i in {1..100}; do echo "$i"; sleep 0.3; done
