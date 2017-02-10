close all
load xTrain.dat
load yTrain.dat
load xTest.dat
load yTest.dat
degree = 10;
rms_train = zeros(1,10);
rms_test = zeros(1,10);
for degree = 0:9
w=poly_regression( degree,xTrain,yTrain );

rms_train(degree+1)=regression_check( w,xTrain,yTrain );
end
for degree = 0:9
w=poly_regression( degree,xTrain,yTrain );

rms_test(degree+1)=regression_check( w,xTest,yTest );
end
hold on
plot(rms_train,'b')
plot(rms_test,'r')