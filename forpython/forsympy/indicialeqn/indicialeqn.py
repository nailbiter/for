#!/Users/nailbiter/anaconda3/bin/python3

import sys
from sympy import *
from functools import reduce
from myprintutils import *

x, ell, mu, r = symbols('x ell mu r')
init_printing(use_unicode=True)

#######################################################################
def indicialeqn(a,b,c,t):
    """
    computes the indicial equation for the ODE
    a(x)y'' + b(x)y' + c(x)
    @param a a(x) function in symbol x
    @param b b(x) function in symbol x
    @param c c(x) function in symbol x
    @return eqn indicial equation as polynomial in symbol r
    """
    print("hi")
