#!/bin/sh

lyxdir=./forlyx
git add "$lyxdir"/*.lyx

if command -v lyx 1>/dev/null 2>/dev/null; then
    texdir="$lyxdir"/texs
    if [ ! -d "$texdir" ]; then
        mkdir $texdir
    fi

    for f in $lyxdir/*.lyx; do
        #echo "lyx -e pdflatex "$f""
        lyx -e pdflatex "$f"
    done
    mv $lyxdir/*.tex $texdir
    git add $texdir/*.tex
fi
