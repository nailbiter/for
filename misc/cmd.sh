#!/bin/sh

v1="$HOME/opencv/TLD/01_david/test.avi $HOME/opencv/TLD/01_david/gt.txt"
v2="$HOME/opencv/TLD/02_jumping/test.avi $HOME/opencv/TLD/02_jumping/gt.txt"
v3="$HOME/opencv/TLD/03_pedestrian1/test.avi $HOME/opencv/TLD/03_pedestrian1/gt.txt"
v4="$HOME/opencv/TLD/04_pedestrian2/test.avi $HOME/opencv/TLD/04_pedestrian2/gt.txt"
v5="$HOME/opencv/TLD/05_pedestrian3/test.avi $HOME/opencv/TLD/05_pedestrian3/gt.txt"
v6="$HOME/opencv/TLD/06_car/test.avi $HOME/opencv/TLD/06_car/gt.txt"
r1="165,93,216,147"
r2="147,110,180,142" 
r3="48,46,64,111"
r4="124,136,145,189"
r5="154,102,178,154"
r6="142,125,232,164"
INIT_RECT="$r1 $r2 $r3 $r4 $r5 $r6"

if [ $1 = "vid" ]
then
	for i in `seq 1 99` ; do
		montage -geometry 400 image1_$i.jpg tech$i.jpg output$i.png
	done
	ffmpeg -r 10 -i output%d.png -r 24 ~/Downloads/tld_demo.avi
	exit
fi

#./bin/example_tracking_benchmark $v1 $v2 $v3 $v4 $v5 $v6 TLD $INIT_RECT MEDIANFLOW $INIT_RECT
./bin/example_tracking_benchmark -s $v5 MEDIANFLOW $r5 TLD $r5
