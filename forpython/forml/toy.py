import pylab;
import numpy;
import sys;

#tesimeclear
x=numpy.linspace(-1,1,100);
signal = 2+x+2*x*x;
noise = numpy.random.normal(0,0.1,100);
y = signal+noise;

pylab.plot(signal,'b');
pylab.plot(y,'g');
pylab.plot(noise, 'r');
pylab.xlabel("x");
pylab.ylabel("y");
pylab.legend(["Without Noise", "With Noise", "Noise"], loc = 2);
x_train = x[0:80];
y_train = y[0:80];

for degree in [2,3,8]:
    pylab.figure();
#    degree = 2;
    X_train = numpy.column_stack([numpy.power(x_train,i) for i in range(0,degree)]);
    model = numpy.dot(numpy.dot(numpy.linalg.inv(numpy.dot(X_train.transpose(),X_train)),X_train.transpose()),y_train)
    pylab.plot(x,y,'g')
    pylab.xlabel("x")
    pylab.ylabel("y")
    predicted = numpy.dot(model, [numpy.power(x,i) for i in range(0,degree)])
    pylab.plot(x, predicted,'r')
    pylab.legend(["Actual", "Predicted"], loc = 2)
    train_rmse1 = numpy.sqrt(numpy.sum(numpy.dot(y[0:80] - predicted[0:80], y_train -
                                                 predicted[0:80])))
    test_rmse1 = numpy.sqrt(numpy.sum(numpy.dot(y[80:] - predicted[80:], y[80:] -
                                                predicted[80:])))
    print("Train RMSE (Degree = {})".format(degree-1), train_rmse1)
    print("Test RMSE (Degree = {})".format(degree-1), test_rmse1)

pylab.show();
