#!/bin/sh

lyxdir=./forlyx
git add "$lyxdir"/*.lyx

    if command -v lyx 1>/dev/null 2>/dev/null; then
        echo "have lyx"
    else
        echo "no lyx"
    fi

exit

texdir="$lyxdir"/texs
if [ ! -d "$texdir" ]; then
    mkdir $texdir
fi

ls $texdir
