#!/usr/bin/env bash

set -e

# Create tags for a PHP library.
# Can be called as follows:
#
# - mkTags
#   Will then prompt for a directory and the "alias" (i.e., tag file name) you
#   wish to scan.
# - mkTags [dir]
#   Will scan the directory chosen, using its basename as the alias (i.e., tag
#   file name).
# - mkTags [dir] [alias]
#
# Tags are created in $HOME/.vim/tags/

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
cd $dir
#exec ctags \
#-f ~/.vim/tags/$name \
#-h \".php\" -R \
#--exclude=\"\.svn\" \
#--totals=yes \
#--tag-relative=yes \
#--PHP-kinds=+cf \
#--regex-PHP='/abstract class ([^ ]*)//c/' \
#--regex-PHP='/interface ([^ ]*)//c/' \
#--regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)//f/'

exec ctags \
-f ~/.vim/tags/$name \
--languages=PHP \
-R \
--extra=+f \
--exclude="\.svn" \
--exclude="\.git/" \
--exclude="vendor/" \
--exclude="node_modules/" \
--totals=yes \
--tag-relative=yes \
--fields=+aimS \
# --PHP-kinds=+cfintv
--PHP-kinds=+cftv
echo "[DONE]"
