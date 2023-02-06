#!/bin/bash

path=$1
line=$2
change=$3

path_tail=$(basename $path)

sed -i "" "s/$line/$change/" $path_tail

echo "$path - $(wc -c $path_tail | awk '{print $1}') - $(date -r $path_tail +"%Y-%m-%d %H:%M") - $(shasum -a 256 $path_tail | awk '{print $1}') - sha256" >> files.log 
