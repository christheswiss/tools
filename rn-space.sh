#!/bin/bash

for f in "$@"
do
	a=${f// /-}
    b=${a//[^[:alnum:].-]/}
    c=${b//---/-}
    d=${c//--/-}
    mv "$f" "$d"
done
