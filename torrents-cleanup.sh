#!/bin/bash

dir=()

for j in /Volumes/dragon/torrents/*
do
    dir+=("$j")
    for k in "$j"/*
    do
        if [ -d "$k" ]
        then
            dir+=("$k")
            for m in "$k"/*
            do
                if [ -d "$m" ]
                then
                    dir+=("$m")
                fi
            done
        fi
    done
done

dirnum=${#dir[@]}

for i in $(seq $dirnum 1)
do
    if [ -f "${dir[i-1]}/.DS_Store" ]
    then
        rm "${dir[i-1]}/.DS_Store"
    fi
    if [ -d "${dir[$i-1]}" ]
    then
        if [ $(ls -A "${dir[$i-1]}") ]
        then
            echo "Not Empty:" ${dir[$i-1]}
        else
            echo "Deleting:" ${dir[$i-1]}
            rmdir "${dir[$i-1]}"
        fi
    fi
done
