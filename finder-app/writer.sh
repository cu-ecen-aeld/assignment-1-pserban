#!/bin/bash

if [ ! $# -eq 2 ]
then
    echo "Error: You should give 2 params to the script."
    exit 1
fi

mkdir --parent {dirname $1} && touch $1

if [ ! $? -eq 0 ]
then
    echo "Error: An error appeared when creating the file"
    exit 1
fi

echo $2 > $1
