#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jan 22 17:46:26 2019

@author: oleksiileontiev
"""

import theano.tensor as T
from theano import function
# L1 Regularization
def l1(x):
    return T.sum(abs(x))
# L2 Regularization
def l2(x):
    return T.sum(x**2)
a = T.dmatrix('a')
f_a = l1(a)
f_l1 = function([a], f_a)
print ("L1 Regularization:", f_l1([[0,1,3]]));
b = T.dmatrix('b')
f_b = l2(b)
f_l2 = function([b], f_b)
print ("L2 Regularization:", f_l2([[0,1,3]]));