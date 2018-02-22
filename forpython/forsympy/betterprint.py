import sys
from sympy import *
from functools import reduce

u, U, a, b,p,q = symbols('u U a b P Q')
init_printing(use_unicode=True)

def onlyfunctionin(f,symbols):
    res = f
    for s in symbols:
        res = res.subs(s,0)
    return isinstance(res,Integer)

def mycoeffextraction(coeff):
    if(onlyfunctionin(coeff,[])):
        return coeff
    elif(onlyfunctionin(coeff,[a])):
        poly = Poly(coeff,a)
        if(list(poly.coeffs())[0]>0):
            return 1
        else:
            return -1
        #sys.stderr.write('{0}\n'.format(p.coeffs()))
        #return -1
    elif(onlyfunctionin(coeff,[q,a])):
        poly = Poly(coeff,q)
        if(list(poly.coeffs())[0]<0):
            return 1
        else:
            return -1
    elif(onlyfunctionin(coeff,[q,p,a])):
        poly = Poly(coeff,p)
        if(list(poly.coeffs())[0]<0):
            return 1
        else:
            return -1
    else:
        raise
def myparse(myvalargs):
    coefflist = list(map(mycoeffextraction,myvalargs))
    const = reduce((lambda x,y: x*y),coefflist)
    alist=[]
    qlist=[]
    pqlist=[]
    for i in range(len(myvalargs)):
        if(isinstance(myvalargs[i],Integer)):
            continue
        r = myvalargs[i] * coefflist[i]
        if(onlyfunctionin(r,[a])):
            alist.append(r)
        elif(onlyfunctionin(r,[q,a])):
            qlist.append(r)
        elif(onlyfunctionin(r,[q,p,a])):
            pqlist.append(r)
        else:
            raise
    return const,alist,qlist,pqlist
