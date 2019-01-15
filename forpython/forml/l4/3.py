#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jan 15 14:27:12 2019

@author: oleksiileontiev
"""

import numpy
import theano.tensor as T
from theano import function
a = T.dmatrix('a')
b = T.dmatrix('b')
c = T.dmatrix('c')
d = T.dmatrix('d')
p = T.dscalar('p')
q = T.dscalar('q')
r = T.dscalar('r')
s = T.dscalar('s')
u = T.dscalar('u')
e = (((a * p) + (b - q) - (c + r )) * d/s) * u
f = function([a,b,c,d,p,q,r,s,u], e)
a_data = numpy.array([[1,1],[1,1]])
b_data = numpy.array([[2,2],[2,2]])
c_data = numpy.array([[5,5],[5,5]])
d_data = numpy.array([[3,3],[3,3]])
print ("Expected:", (((a_data * 1.0) + (b_data - 2.0) - (c_data + 3.0 )) * d_data/4.0) * 5.0);
print ("Via Theano:", f(a_data,b_data,c_data,d_data,1,2,3,4,5));