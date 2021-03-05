#!/usr/bin/env bash
set -e

dir=""
name=""
if [ $# -ge 2 ] ; then
    # Two arguments: first is directory, second is "alias"
    dir=$1
    name=$2
else
    if [ $# -eq 1 ] ; then
        # One argument: use as directory, and use basename of directory as alias
        dir=$1
        name=`basename $1`
    else
        # Otherwise: prompt
        echo "Enter the path to a directory containing PHP code you wish"
        echo "to create tags for:"
        read dir
        echo "Enter the name of the tagfile you wish to create:"
        read name
    fi
fi

echo "Creating tags for directory '$dir' using alias '$name'"

"Move to $dir is essential because ctags not accept the directory path"
cd $dir

exec ctags-exuberant -f $dir/$name \
	--languages=PHP \
	-R \
	--totals=yes \
	--tag-relative=yes \
	--extra=+f \
	--fields=+aimS \
	--PHP-kinds=+cfiv \
	--exclude="\.svn" \
	--exclude="\.git/" \
	--exclude="node_modules/" \
	--exclude="\DATA" \
	--exclude="\composer" \
	--exclude="\composer.phar" \
	--regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\/f/' \
	--regex-PHP='/abstract class ([^ ]*)/\/c/' \
	--regex-PHP='/interface ([^ ]*)/\/c/' \
	--regex-PHP='/get([a-z|A-Z|0-9]+)Attribute/\1/' \
	--regex-PHP='/scope([a-z|A-Z|0-9]+)/\1/'

echo "ctag generation done. [DONE]"
