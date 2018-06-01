#!/Users/nailbiter/anaconda3/bin/python3

import sys
from sympy import *
from functools import reduce

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
    @param t point at which to construct the equation
    @return (b,c) coefficients r^2 + b(r)*r + c(r) of indicial equation
    """
    if(t==oo):
        return indicialeqn(pow(x,4)*a.subs(x,1/x),
                -pow(x,2)*b.subs(x,1/x)+2*pow(x,3)*a.subs(x,1/x),c.subs(x,1/x),0)

    p = limit(b/a*(x-t),x,t)
    q = limit(c/a*pow(x-t,2),x,t)

    expr = r*(r-1)+p*r+q
    expr = expand(expr)
    expr = Poly(expr,r)

    return (expr.coeff_monomial(r**2),expr.coeff_monomial(r**1),expr.coeff_monomial(r**0))

#######################################################################
print(indicialeqn(1-pow(x,2),-2*x,ell*(ell+1)-pow(mu,2)/(1-pow(x,2)),1))
print(indicialeqn(1-pow(x,2),-2*x,ell*(ell+1)-pow(mu,2)/(1-pow(x,2)),-1))
print(indicialeqn(1-pow(x,2),-2*x,ell*(ell+1)-pow(mu,2)/(1-pow(x,2)),oo))
