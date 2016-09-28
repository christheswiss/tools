#!/bin/bash

dir=()

for j in /Volumes/dragon/series/*
do
    if [ "$j" == "/Volumes/dragon/series/*" ]
    then
        echo "No directories"
    else
        dir+=($j)
    fi
    for k in "$j"/*
    do
        if [ -d $k ]
        then
            dir+=($k)
        fi
    done
done

dirnum=${#dir[@]}

if ( test $dirnum -gt "0" )
then
    for i in $(seq $dirnum 1)
    do
        if [ -f ${dir[$i-1]}/.DS_Store ]
        then
            echo "Deleting:" ${dir[$i-1]}/.DS_Store
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
fi
