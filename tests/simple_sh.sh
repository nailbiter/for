#!/bin/sh

if [ "$1" = "merge" ]; then
    i=0;
    while read line
    do
        eval part$i="$line"
        i=`expr $i + 1`
#        if test $i -eq 0
#        then
#            printf "$line"","
#            i=1;
#        else
#            printf "$line\n"
#            i=0;
#        fi
    done < /dev/stdin
    half=`expr $i / 2`
    halfm1=`expr $half - 1`
    for j in `seq 0 1 $halfm1`
    do
        k=`expr $j + $half`
        eval echo "\$part$j,\$part$k"
    done
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
