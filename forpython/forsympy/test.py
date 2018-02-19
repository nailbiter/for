from sympy import *
import sys

u, U, a, b,p,q = symbols('u U a b p q')
init_printing(use_unicode=True)

def myadd(res,exp,coeff):
    if(not(exp in res)):
        res[exp] = 0
    res[exp] = res[exp] + coeff
def myiter(coeffs):
    res = {}
    for exp,coeff in coeffs.items():
        #print('hi {0} and {1}'.format(exp,coeff))
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
    for exp in (coeffs.keys()):
        if(not(coeffs[exp]==0)):
            print('({0},{1})&\\to&{2}\\\\'.format(exp[0],exp[1],
                latex(factor(coeffs[exp]))))

#print simplify(sin(u)**2 + cos(u)**2)
coeffs = {(a,0): 1}
num = sys.argv[1]
#print 'num={}'.format(int(num))
for i in range(int(num)):
    coeffs = myiter(coeffs)
myprint(coeffs)
