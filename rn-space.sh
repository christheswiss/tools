#!/bin/bash

for f in "$@"
do
    b=${f//[^A-Za-z0-9.-_\/]/-}
    c=${b//----/-}
    d=${c//---/-}
    e=${d//--/-}
    mv "$f" "$e"
done
