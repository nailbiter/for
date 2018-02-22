from sympy import *
import sys
import betterprint

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
    for exp in sorted(coeffs.keys(),
            key=lambda exp:(exp[0].subs(a,0),exp[1])):
        if(coeffs[exp]==0):
            continue
        if(True):
            expstring = '({0},{1})'.format(exp[0],exp[1])
        else:
            expstring = 'U^{{ {0} }}u^{{ {1} }}'.format(exp[0],exp[1])
        print('{0}&\\to&{1}\\\\'
                .format(expstring,latex(factor(coeffs[exp]))))

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

filtered={}
if(num==4):
    for exp in (coeffs.keys()):
        if(coeffs[exp]!=0):
            filtered[exp]=coeffs[exp]
    mykey = list(filtered.keys())[1]
    myval = simplify(filtered[mykey])
    myvalargs = myval.args
    res = betterprint.myparse(myvalargs)

    sys.stderr.write('{0}\n'.format(mykey))
    sys.stderr.write('{0}\n{1}\n{2}\n{3}\n'
            .format(res[0],res[1],res[2],res[3]))
    #sys.stderr.write('{0}\n'.format(myval.func))
    #sys.stderr.write('{0}\n'.format(coefflist))
    #sys.stderr.write('{0}\n'.format(myvalargs))
    #sys.stderr.write('{0}\n'
    #        .format(
    #            list(
    #                map(
    #                    lambda m:betterprint.onlyfunctionin(m,[]),
    #                    myvalargs))))
