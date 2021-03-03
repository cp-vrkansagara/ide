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
cd $dir/.git
rm -rf $dir/.git/tags
# exec ctags-exuberant -f ~/.vim/tags/$name \
#--regex-php=/regex/tag-name/tag-kind/flags
exec ctags-exuberant -f tags \
	--languages=PHP \
	-R \
	--extra=+f \
	--exclude="\.svn" \
	--exclude="\.git/" \
	--exclude="vendor/" \
	--totals=yes \
	--tag-relative=yes \
	--fields=+aimS \
	# --PHP-kinds=+cfintv
	--PHP-kinds=+cfiv

echo "ctag generation done. [DONE]"
