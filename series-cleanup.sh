#!/bin/bash

dir=()

for j in /Volumes/dragon/series/*
do
    dir+=($j)
    for k in "$j"/*
    do
        if [ -d $k ]
        then
            dir+=($k)
        fi
    done
done

dirnum=${#dir[@]}

for i in $(seq $dirnum 1)
do
    if [ -f ${dir[$i-1]}/.DS_Store ]
    then
        rm ${dir[$i-1]}/.DS_Store
    fi
    if [ "$(ls -A ${dir[$i-1]})" ]
    then
        echo "Not Empty:" ${dir[$i-1]}
    else
        echo "Deleting:" ${dir[$i-1]}
        rmdir ${dir[$i-1]}
    fi
done
