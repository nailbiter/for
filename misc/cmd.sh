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

#./bin/example_tracking_benchmark $v1 $v2 $v3 $v4 $v5 $v6 TLD $INIT_RECT MEDIANFLOW $INIT_RECT
./bin/example_tracking_benchmark -s $v5 MEDIANFLOW $r5 TLD $r5

#./bin/c-example-median_flow_v2 $v1 2>&1|grep finish #309
#./bin/c-example-median_flow_v2 $v2 2>&1|grep finish #36
#./bin/c-example-median_flow_v2 $v3 2>&1|grep finish #5
#./bin/c-example-median_flow_v2 $v4 2>&1|grep finish #33
#./bin/c-example-median_flow_v2 $v5 2>&1|grep finish #52
#./bin/c-example-median_flow_v2 $v6 2>&1|grep finish #494

# 473
#   35
#   10
#   31
#   52
#  510

#Rect2d
#/home/nailbiter/opencv/TLD/01_david/test.avi  761  588
#/home/nailbiter/opencv/TLD/02_jumping/test.avi  313   35
#/home/nailbiter/opencv/TLD/03_pedestrian1/test.avi  140    8
#/home/nailbiter/opencv/TLD/04_pedestrian2/test.avi  338   32
#/home/nailbiter/opencv/TLD/05_pedestrian3/test.avi  184   52
#/home/nailbiter/opencv/TLD/06_car/test.avi  945  510

#/home/nailbiter/opencv/TLD/01_david/test.avi  761  710
#/home/nailbiter/opencv/TLD/02_jumping/test.avi  313   35
#/home/nailbiter/opencv/TLD/03_pedestrian1/test.avi  140    8
#/home/nailbiter/opencv/TLD/04_pedestrian2/test.avi  338   33
#/home/nailbiter/opencv/TLD/05_pedestrian3/test.avi  184   52
#/home/nailbiter/opencv/TLD/06_car/test.avi  945  510

#/home/nailbiter/opencv/TLD/05_pedestrian3/test.avi 52         65
#*************************************************************
#                                                   MEDIANFLOW          TLD
#/home/nailbiter/opencv/TLD/05_pedestrian3/test.avi 1/0.329032/0.495146 0.846995/1/0.91716
#*************************************************************
#                                                   MEDIANFLOW TLD
#/home/nailbiter/opencv/TLD/05_pedestrian3/test.avi 27.1739s   3254.4s
#*************************************************************
