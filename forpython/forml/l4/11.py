#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Feb 11 22:03:07 2019

@author: oleksiileontiev
"""

import numpy
import theano
import theano.tensor as T
import sklearn.metrics


#global const's
examples = 1000
features = 100

#procedures
def l2(v):
    return T.sum(v**2);
def squared_error(xx, yy):
    return (xx - yy) ** 2;

#main
D = (numpy.random.randn(examples, features), numpy.random.randn(examples))
training_steps = 1000
x = T.dmatrix("x")
y = T.dvector("y")
w = theano.shared(numpy.random.randn(features), name="w")
b = theano.shared(0., name="b")
p = T.dot(x, w) + b
error = squared_error(p,y)
loss = error.mean() + 0.01 * l2(w)
gw, gb = T.grad(loss, [w, b])
train = theano.function(inputs=[x,y],outputs=[p, error], updates=((w, w - 0.1 * gw),
(b, b - 0.1 * gb)))
predict = theano.function(inputs=[x], outputs=p)
print("RMSE before training:", sklearn.metrics.mean_squared_error(D[1],predict(D[0])));
for i in range(training_steps):
    prediction, error = train(D[0], D[1])
print("RMSE after training:", sklearn.metrics.mean_squared_error(D[1],predict(D[0])));