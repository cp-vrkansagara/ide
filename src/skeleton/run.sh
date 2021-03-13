#!/usr/bin/env bash
set -e

CURRENT_DATE=$(date "+%Y%m%d%H%M%S")

# Github branch name, 
REPO=${REPO:-magento/magento2}
REMOTE=${REMOTE:-https://github.com/${REPO}.git}
BRANCH=${BRANCH:-2.4-develop}

BRANCH="2.4-develop"
CLONE="${HOME}/www/magento/${BRANCH}"
PHP='/usr/bin/php'

echo $CLONE

if [ ! -d "$CLONE" ]; then
	git clone --depth=1 --branch "$BRANCH" "$REMOTE" 
else
	echo "Magento version [$BRANCH] available."
fi
