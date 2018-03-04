from sympy import *
from mpmath import *
import sys
from betterprint import *
from myprintutils import *
import math

u, U, a, b,p,q = symbols('u U a b P Q')
init_printing(use_unicode=True)

def myadd(res,exp,coeff):
    if(not(exp in res)):
        res[exp] = 0
    res[exp] = res[exp] + coeff
def myiter(coeffs):
    res = {}
    for exp,coeff in coeffs.items():
        if(coeff==0):
            continue
        myadd(res,(exp[0] + 2,exp[1] - 2),
                coeff*(exp[1]*(1-exp[1]))) #ok
        myadd(res,(exp[0] + 2,exp[1]),
                -coeff*(exp[0]+exp[1])*(exp[0]-exp[1]-q)) #ok
        myadd(res,(exp[0] + 1,exp[1] - 1),
                -coeff*(2*exp[0]-p-q)*exp[1]) #ok
        myadd(res,(exp[0] + 1,exp[1] + 1),
                coeff*(exp[0]+exp[1])*(2*exp[0]-p-q)) #ok
    return res
def myprint(coeffs):
    oldkey = 0
    flag = False
    printarraybeginning()
    for exp in sorted(coeffs.keys(),
            key=lambda exp:(exp[0].subs(a,0),exp[1])):
        if(coeffs[exp]==0):
            continue

        if((oldkey != exp[0]) and flag):
            print('\\hline')
        flag = True
        if(True):
            expstring = '({0},{1})'.format(exp[0],exp[1])
        else:
            expstring = 'U^{{ {0} }}u^{{ {1} }}'.format(exp[0],exp[1])

        i,j,k = generateijk(exp,num)
        numbers = generaterealnumbers(exp,coeffs[exp])
        othernumbers = generatenumbers(i,j,k)
                        
        myassert(numbers,othernumbers,\
                ['qjPusL','nIBCZa','GJQbfs','hGfCJm','UuMvNs'])

        printarrayrow([expstring,numbers['qjPusL'],\
                numbers['UuMvNs'],numbers['hGfCJm'],\
                numbers['GJQbfs'],numbers['MZiRoL'],\
                simplify(othernumbers['nIBCZa']-numbers['nIBCZa'])==0
                ])
        oldkey = exp[0]
    printarrayending()

#variable declarations
if (true):
    coeffs = {(a,0): 1}
else:
    coeffs = {(a,b): 1}
num = int(sys.argv[1])

#main
for i in range(num):
    coeffs = myiter(coeffs)
myprint(coeffs)
myassertpoly(coeffs,num)

if(not(True)):
    expr = (a ** 2)*(u**(a+1)) + a*u + (a ** 2) + a
    expr = collect(expr,u)
##    sys.stderr.write('{0}\n'.format(expr.as_coefficients_dict()))
##    for term in expr.args:
##        term = factor(term)
    sys.stderr.write('{0}\n'.format(expr.coeff(u,a+u)))
