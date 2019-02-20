#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jan 22 17:48:40 2019

@author: oleksiileontiev
"""

import numpy.random as r;
import theano.tensor as t;
import theano;
import numpy as np;
import sklearn.metrics;


# global const's
examples = 1000;
features = 100;
training_steps = 1000;
penalty = 0.01;

# procedures
def l2(v):
    return t.sum(v ** 2);


# main
D = (np.random.randn(examples, features), np.random.randint(size=examples, low=0, high=2));
x = t.dmatrix("x");
y = t.dvector("y");
w = theano.shared(r.randn(features), name="w");
b = theano.shared(0., name="b");
p = 1 / (1 + theano.tensor.exp(-theano.tensor.dot(x, w) - b))
error = theano.tensor.nnet.binary_crossentropy(p, y)
loss = error.mean() + penalty * l2(w)
prediction = (p > 0.5);
gw, gb = theano.tensor.grad(loss, [w, b]);
train = theano.function(inputs=[x, y], outputs=[p, error], updates=((w, w - 0.1 * gw),
                                                                    (b, b - 0.1 * gb)));
predict = theano.function(inputs=[x], outputs=prediction);
print("Accuracy before Training:", sklearn.metrics.accuracy_score(D[1], predict(D[0])));
for i in range(training_steps):
    prediction, error = train(D[0], D[1])
print("Accuracy after Training:", sklearn.metrics.accuracy_score(D[1], predict(D[0])));