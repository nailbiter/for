from sympy import *
from mpmath import *
import sys
from main2aux import *
from betterprint import *
import math

u, U, a, b,p,q = symbols('u U a b P Q')
init_printing(use_unicode=True)

#functions
def generatePoly(k):
    res = {}
    computedset = set()
    for i in range(k,2*k + 1):
        for j in range(0,2*k-i + 1):
            if((i-j)%2 != 0):
                continue
            computedset.add((a+i,j))
    for exp in computedset:
        i = exp[0].subs(a,0)
        j = exp[1]
        res[exp] = rf((2*a-p-q)/2-k,2*k)*\
        pow(-1,i)*pow(2,i+j)*rf(-k,(i+j)/2)*\
        rf(a/2,(i+j)/2)*rf((-q+a)/2,i-k)/\
        (factorial(i-k)*factorial(j)*rf((2*a-p-q-2*k)/2,i))
    return res
#main
num = int(sys.argv[1])
coeffs = {(a,0): 1}
for k in range(num):
    print('\t{0}'.format(k))
    poly = generatePoly(k)
    iterpoly = myiter(poly)
    #poly2 = generatePoly(k+1)
    poly2 = generatePolyNextStep(k)
    #poly2[(a+100500,0)] = 100500
    for exp in sorted(poly2.keys(),
    key=lambda exp:(exp[0].subs(a,0),exp[1])):
        if(poly2[exp]==0):
            continue
        if(simplify(poly2[exp] - iterpoly[exp]) != 0):
            print('{0}: {1}\n'\
            .format(exp,simplify(poly2[exp]-iterpoly[exp])))
