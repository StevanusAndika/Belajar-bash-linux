#!/bin/sh
# file: checkdir.sh
# Usage: checkdir.sh DirectoryName

if [ $# -ne 1 ]
then
    echo "Error, usage: checkdir.sh DirectoryName"
    exit 1
fi

[ -d "$1" ] && ls -ld "$1" || echo "$1 bukan direktori"
