from sympy import *
from mpmath import *
import sys
from main2aux import *
from betterprint import *
import math

u, U, a, b,p,q = symbols('u U a b P Q')
init_printing(use_unicode=True)

def generateComputedSet(s1,e1,s2,e2):
    computedset = set()
    for i in range(s1,e1+1):
        for j in range(s2,e2 -i +1):
            if((i-j)%2 != 0):
                continue
            computedset.add((a+i,j))
    return computedset
def generatePolyNextStep(k):
    res = {}
    for exp in generateComputedSet(k,2*k,0,2*k):
        i = exp[0].subs(a,0)
        j = exp[1]
        myadd(res,(exp[0]+1,exp[1]+1),
                2*rf((2*a-p-q)/2-k,2*k)*\
                pow(-1,i)*pow(2,i+j)*rf(-k,(i+j)/2)*\
                        rf(a/2,(i+2+j)/2)*rf((a-q)/2,i-k)*\
                        (2*a+2*i-p-q)/\
                        (factorial(i-k)*factorial(j)*\
                        rf((2*a-p-q-2*k)/2,i))
                        )
        myadd(res,(exp[0]+1,exp[1]-1),
                -rf((2*a-p-q)/2-k,2*k)*
                pow(-1,i)*pow(2,i+j)*rf(-k,(i+j)/2)*\
                        rf(a/2,(i+j)/2)*rf((a-q)/2,i-k)*\
                        (2*a+2*i-p-q)/\
                        (factorial(i-k)*factorial(j-1)*\
                        rf((2*a-p-q-2*k)/2,i))
                )
        myadd(res,(exp[0]+2,exp[1]),
                -2*rf((2*a-p-q)/2-k,2*k)*
                pow(-1,i)*pow(2,i+j)*rf(-k,(i+j)/2)*\
                        rf(a/2,(i+j+2)/2)*rf((a-q)/2,i-k)*\
                        (-q+a+i-j)/\
                        (factorial(i-k)*factorial(j)*\
                        rf((2*a-p-q-2*k)/2,i))
                )
        myadd(res,(exp[0]+2,exp[1]-2),
                -rf((2*a-p-q)/2-k,2*k)*
                pow(-1,i)*pow(2,i+j)*rf(-k,(i+j)/2)*\
                        rf(a/2,(i+j)/2)*rf((a-q)/2,i-k)\
                        /\
                        (factorial(i-k)*factorial(j-2)*\
                        rf((2*a-p-q-2*k)/2,i))
                )
    return res
