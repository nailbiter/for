#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jan 15 14:23:09 2019

@author: oleksiileontiev
"""

import numpy
import theano.tensor as T
from theano import function
a = T.dmatrix('a')
b = T.dmatrix('b')
c = T.dmatrix('c')
d = T.dmatrix('d')
e = (a + b - c) * d
f = function([a,b,c,d], e)
a_data = numpy.array([[1,1],[1,1]])
b_data = numpy.array([[2,2],[2,2]])
c_data = numpy.array([[5,5],[5,5]])
d_data = numpy.array([[3,3],[3,3]])
print ("Expected:", (a_data + b_data - c_data) * d_data);
print ("Via Theano:", f(a_data,b_data,c_data,d_data));