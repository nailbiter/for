import json;
import cv2;
import argparse;
import sys;
import numpy as np;
from math import sin,cos,radians;


#procedures

#main
with open(sys.argv[1],'r') as f:
    data = json.load(f);
print(data);

for i in range(data['count']):
    img = np.zeros((data['image']['height'],data['image']['width'],4), np.uint8);
    angle = radians(((data['count']-i)*data['startangle'])/data['count']);
    pt =( 
            (data['image']['width']+data['rect']['width'])//2,
            (data['image']['height']-data['rect']['height'])//2,
            );
    ll = (int(cos(angle)*data['rect']['width']),int(sin(angle)*data['rect']['width']));
    cv2.line(img,
            tuple(pt),
            tuple(np.subtract(pt,ll)),
            data['rect']['color'],
            data['linethickness'],
            );
    cv2.rectangle(img
            ,(
                (data['image']['width']-data['rect']['width'])//2,
                (data['image']['height']-data['rect']['height'])//2,
                )
            ,(
                (data['image']['width']+data['rect']['width'])//2,
                (data['image']['height']+data['rect']['height'])//2,
                )
            ,data['rect']['color']
            ,-1);
    cv2.imwrite('{}/out_{:06d}.{}'.format(data['outdir'],i,data['format']),img);
