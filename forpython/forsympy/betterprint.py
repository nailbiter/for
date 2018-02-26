import sys
from sympy import *
from functools import reduce
from myprintutils import *

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
            alist.append(r.subs(a,0))
        elif(onlyfunctionin(r,[q,a])):
            qlist.append(r.subs(q,0).subs(a,0))
        elif(onlyfunctionin(r,[q,p,a])):
            pqlist.append(r.subs(q,0).subs(p,0).subs(a,0))
        else:
            raise
    return const,alist,qlist,pqlist
def myprintnumfactorization(n):
    res = ''
    dict = factorint(abs(n))
    for key in sorted(dict.keys()):
        res = res+'{0}^{{ {1} }}'.format(key,dict[key])
    return res
def makePoly(i,j,k):
    return rf((2*a-p-q-2*k)/2,2*k)*\
            ((pow(-1,i)*pow(2,i+j)*rf(-k,(i+j)/2))/
            (factorial(i-k)*factorial(j)))*\
            rf(a/2,(i+j)/2)*rf((-q+a)/2,i-k)/\
            rf((2*a-p-q-2*k)/2,i)*\
            (U ** (a+i))*(u ** j)
def generatenumbers(i,j,k):
    return {
            'qjPusL':(factorial(k)*pow(-1,(i-j)/2))/
            (factorial(i-k)*pow(2,k-(i+j)/2)*factorial(j)*factorial(k-(i+j)/2)),
            'UuMvNs':(i+j)/2,
            'hGfCJm':i-k,
            'GJQbfs':2*k-i,
            'MZiRoL':-1 if i==2*k else 2*k-2,
            'nIBCZa':makePoly(i,j,k)}
def generaterealnumbers(exp,coeff):
    res = myparse(factor(coeff).args)
    monomial = (U**exp[0]) * (u**exp[1])
    numbers = {'qjPusL':res[0],
            'UuMvNs':len(res[1]),
            'hGfCJm':len(res[2]),
            'GJQbfs':len(res[3]),
            'MZiRoL':(-1 if len(res[3])==0 else res[3][len(res[3])-1]),
            'nIBCZa':coeff*monomial,
##            'WhMOFQ':(coeff*monomial).subs(u,1)
            }
    return numbers
def generateijk(exp,num):
    i = exp[0].subs(a,0)
    j = exp[1]
    k = num
    return i,j,k
def generaterealpoly(coeffs):
    res = 0
    for exp in (coeffs.keys()):
        monom = (U**exp[0]) * (u**exp[1])
        coeff = coeffs[exp]
        res = res + monom*coeff
    return res
def myassert(numbers,othernumbers,checkwhat):
    for key in checkwhat:
        assert simplify(numbers[key]-othernumbers[key])==0, \
                "key=%r" % key
def myassertpoly(coeffs,k):
    poly = expand(generaterealpoly(coeffs)).subs(u,1)
    computedpoly = expand(generatecomputedpoly(coeffs,k))
    if(not(False)):
        printexpression(poly)
        printexpression(computedpoly)
        printexpression(computedpoly - poly)
    if(not(True)):
        realset = set()
        for exp in coeffs.keys():
            if(coeffs[exp] == 0):
                continue
            realset.add(exp)
        computedset = set()
        for i in range(k,2*k + 1):
            for j in range(0,2*k-i + 1):
                if((i-j)%2 != 0):
                    continue
                computedset.add((a+i,j))
        printexpression(realset.symmetric_difference(computedset))
    if(True):
        assert expand(computedpoly-poly)==0, "myassertpoly"
def generatecomputedpoly(coeffs,k):
    res = 0
    computedset = set()
    for i in range(k,2*k + 1):
        for j in range(0,2*k-i + 1):
            if((i-j)%2 != 0):
                continue
            computedset.add((a+i,j))
    for exp in computedset:
        i = exp[0].subs(a,0)
        j = exp[1]
        res = res + rf((2*a-p-q-2*k)/2,2*k)*((pow(-1,i)*pow(2,i+j)*rf(-k,(i+j)/2))/
                (factorial(i-k)*factorial(j)))*\
                rf(a/2,(i+j)/2)*rf((-q+a)/2,i-k)/\
                rf((2*a-p-q-2*k)/2,i)*(U ** (a+i))
    return res
