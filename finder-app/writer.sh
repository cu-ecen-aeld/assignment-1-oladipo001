#!/bin/bash

writefile=$1
writestr=$2
home=$PWD

if [ "$writefile" == "" ] | [ "$writestr" == "" ]; then
    echo "one or more of the specified parameters was blank"
    exit 1
fi 

mkdir -p ${writefile%/*}
cd ${writefile%/*}
touch ${writefile##*/}
echo "${writestr}" >> ${writefile##*/}
cd $home