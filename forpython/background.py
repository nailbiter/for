import sys;
import cv2;
import argparse;
import numpy as np;


#global const's
MASK=(255,255,255,255);
PIXS = ((233, 171, 10, 255),(234, 171, 8, 255),(235, 171, 8, 255),
##        (233, 172, 10, 255),
##        (234, 170, 11, 255),
##        (232, 170, 13, 255),(238, 240, 252, 255),(239, 240, 253, 255),(218, 229, 247, 255),
##        (233, 234, 250, 255),(239, 240, 252, 255),(240, 241, 252, 255),(242, 241, 252, 255),(213, 223, 249, 255),
##(219, 229, 247, 255),
##(222, 229, 248, 255),
##(237, 240, 254, 255),
##(234, 172, 8, 255)  ,
##(231, 170, 12, 255) ,
##(241, 241, 252, 255): 49                  
##(234, 235, 251, 255): 49                  
##(214, 226, 248, 255): 47                  
##(233, 237, 252, 255): 46                  
##(237, 237, 252, 255): 46                  
##(235, 238, 253, 255): 45                  
##(241, 242, 250, 255): 46                  
##(232, 171, 10, 255) : 44                  
##(218, 228, 247, 255): 44                  
##(234, 237, 252, 255): 44                  
##(211, 222, 249, 255): 44                  
        );
FLAG=True;
#procedures
def parseArgs():
    parser = argparse.ArgumentParser();
    parser.add_argument('--in',type=str,required=True,help='');
    parser.add_argument('--out',type=str,required=True,help='');
    parser.add_argument('--num',type=int,default=35,help='');
    args = parser.parse_args();
    return vars(args);
def countPixels(filename):
    image = cv2.imread(filename,-1);
    shape = image.shape;
    print("shape: {}".format(shape));
    dic = {};
    for x in range(shape[0]):
        for y in range(shape[1]):
            pix = tuple(image[x,y]);
            if( pix not in dic ):
                dic[pix] = 0;
            dic[pix] = dic[pix]+1;
    keys = sorted(dic.keys(),key=lambda k:-dic[k]);
    print("{} different values".format(len(keys)));
    for key in keys:
        print("{0:<20}: {1:<20}".format(str(key),dic[key]));
def changePixels(args):
    filename = args['in'];
    image = cv2.imread(filename,-1);
    shape = image.shape;
    for x in range(shape[0]):
        for y in range(shape[1]):
            #if( checkArray(image[x,y]) ):
            if( image[x,y][0]>=200 and image[x,y][2]<105 ):
                image[x,y] = MASK;
    cv2.imwrite(args['out'],image);
def checkArray(pix):
    for p in PIXS:
        if( pix[0]==p[0] and pix[1]==p[1] and pix[2]==p[2] and pix[3]==p[3] ):
            return True;
    return False;

#main
args = parseArgs();
sys.stdout.write("{} --> {}\n".format(args['in'],args['out']));
if(FLAG):
    changePixels(args);
countPixels(args['out']);
