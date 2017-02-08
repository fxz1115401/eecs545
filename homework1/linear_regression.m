close all
load xTrain.dat
load yTrain.dat
load xTest.dat
load yTest.dat
degree = 8;
w=poly_regression( degree,xTrain,yTrain );
y=regression_check( w,xTrain,yTrain );
