clc;
clear all;
close all;
warning off;

%Load dataset
df = readtable("Rice_Type_Classification/riceClassification.csv");

%Split data
X = [df.Area, df.MajorAxisLength, df.MinorAxisLength, df.Eccentricity, df.ConvexArea, df.EquivDiameter, df.Extent, df.Perimeter, df.Roundness, df.AspectRation];
y = [df.Class];
cv = cvpartition(y, 'HoldOut', 0.30);

trainInds = training(cv);
testInds = test(cv);
XTrain = X(trainInds,:);
yTrain = y(trainInds);
XTest = X(testInds,:);
yTest = y(testInds);

%Build naive bayes model
nb = fitcnb(XTrain, yTrain, 'ClassNames', {'0','1'});

%Predict the model
idx = randsample(sum(testInds), 10);
label = predict(nb, XTest);
cm = table(yTest(idx), label(idx),'VariableNames', {'TrueLabel','PredictedLabel'});
