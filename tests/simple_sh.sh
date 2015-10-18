#!/bin/sh

if [ "$1" = "merge" ]; then
    i=0;
    while read line
    do
        if test $i -eq 0
        then
            printf "$line"","
            i=1;
        else
            printf "$line\n"
            i=0;
        fi
    done < /dev/stdin
    exit;
fi

while read line
do
	  #echo "line: $line";
	  hira=`echo "$line" | ~/bin/kakasi -i utf8 -JH`;
	  #echo "hira: $hira";
	  if [ "$hira" = "$line" ]; then
		  echo "$line"
	  else
		  if [ "$1" = "rev" ]; then
		  	echo "$hira--$line"
		  else
		  	echo "$line--$hira"
		  fi
	  fi
done < /dev/stdin
