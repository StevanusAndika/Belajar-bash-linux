#!/bin/sh
# file: salin.sh
# Usage: salin.sh fasal ftujuan

if [ $# -ne 2 ]
then
    echo "Error, usage: salin.sh file-asal file-tujuan"
    exit -1
fi

fasal=$1
ftujuan=$2

echo "salin.sh $fasal $ftujuan"

# a. Check if source file exists
if [ ! -f "$fasal" ]
then
    echo "salin gagal"
    exit 1
fi

# b. Check if destination is a directory
if [ -d "$ftujuan" ]
then
    echo "file tidak bisa disalin ke direktori"
    exit 1
fi

# c. Check if destination file exists (regular file)
if [ -f "$ftujuan" ]
then
    echo -n "File tujuan sudah ada. Apakah akan dihapus? (Y/N): "
    read jawaban
    if [ "$jawaban" = "Y" ] || [ "$jawaban" = "y" ]
    then
        cp "$fasal" "$ftujuan"
        echo "File berhasil disalin."
    else
        echo "File tidak disalin."
    fi
else
    # d. Destination doesn't exist, just copy
    cp "$fasal" "$ftujuan"
    echo "File berhasil disalin."
fi

exit 0
