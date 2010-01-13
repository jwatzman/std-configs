#!/bin/bash

DIR=`dirname $0`
FILES="bash_aliases bash_logout bash_profile bashrc vimrc"

if [ $DIR = "." ]
then
	echo "Please invoke with full path."
	exit 1
fi

for f in $FILES
do
	rm -iv ~/.$f
done

for f in $FILES
do
	ln -isv ${DIR}/$f ~/.$f
done
