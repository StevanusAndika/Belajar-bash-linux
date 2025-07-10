#!/bin/sh
# Test script for confirm function
. ./confirm.sh

confirm
retval=$?

if [ $retval -eq 0 ]
then
    echo "Jawaban YES OK"
elif [ $retval -eq 1 ]
then
    echo "Jawaban NO"
else
    echo "Jawaban CONTINUE"
fi
