import sys
from sympy import *
from functools import reduce
from myprintutils import *

u, U, a, b,p,q = symbols('u U a b P Q')
init_printing(use_unicode=True)

def printarraybeginning():
    print('\\begin{equation*}\\begin{array}[]{lll|llll|l}')
def printarrayending():
    print('\\end{array}\\end{equation*}')
def printarrayrow(r):
        print('{0}&\\to&{1}&{2}&{3}&{4}&...{5}&{6}\\\\'\
                .format(r[0],r[1],r[2],r[3],r[4],r[5],r[6]))
def printexpression(expr):
    print("$${0}$$".format(latex(expr)))
