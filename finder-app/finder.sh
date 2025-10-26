#!/bin/bash

if [ $# -ne 2 ]
then
    echo "The number of parameters should be 2. The number of specified parameters is $#"
    exit 1
fi

if [ ! -d $1 ]
then
    echo "The specified directory ($1) does not exist!"
    exit 1
fi	

filecount=$(find $1 -type f | wc -l)
matchedlines=$(grep $2 $1 --recursive | wc -l)

echo "The number of files are $filecount and the number of matching lines are $matchedlines"
