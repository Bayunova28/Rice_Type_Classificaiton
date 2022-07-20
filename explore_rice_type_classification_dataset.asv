clc;
clear all;
close all;
warning off;

%Load dataset
df = readtable("Rice_Type_Classification/riceClassification.csv");

%Check total rows and columns
size(df);

%Descriptive statistics of each variables
summary(df);

%Check missing values
ismissing(df);

%Visualize correlation matrix of each variables
figure.Position = [10 10 700 900];
corrplot([df.Area, df.MajorAxisLength, df.MinorAxisLength, df.Eccentricity, df.ConvexArea, df.EquivDiameter, df.Extent, df.Perimeter, df.Roundness, df.AspectRation, df.Class]);

%Visualize distribution of area
histfit(df.Area)
title("Distribution of Area");
xlabel("Area");
ylabel("Density");

%Visualize distribution of rice major length
histfit(df.MajorAxisLength);
title("Distribution of Rice Major Length");
xlabel("Rice Major Length");
ylabel("Density");

%Visualize distribution of rice minor length
histfit(df.MinorAxisLength);
title("Distribution of Rice Minor Length");
xlabel("Rice Minor Lenght");
ylabel("Density");

%Visualize distribution of eccentricity
histfit(df.Eccentricity);
title("Distribution of Eccentricity");
xlabel("Eccentricity");
ylabel("Density");

%Visualize distribution of convex area
histfit(df.ConvexArea);
title("Distribution of Convex Area");
xlabel("Convex Area");
ylabel("Density");

%Visualize distribution of rice diameter
histfit(df.EquivDiameter);
title("Distribution of Rice Diameter");
xlabel("Rice Diameter");
ylabel("Density");

%Visualize distribution of rice extent
histfit(df.Extent);
title("Distribution of Rice Extent");
xlabel("Rice Extent");
ylabel("Density");

%Visualize distribution of rice perimeter
histfit(df.Perimeter);
title("Distribution of Rice Perimeter");
xlabel("Rice Perimeter");
ylabel("Density");

%Visualize distribution of rice roundness
histfit(df.Roundness);
title("Distribution of Rice Roundness");
xlabel("Rice Roundness");
ylabel("Density");

%Visualize distribution of rice aspect ratio
histfit(df.AspectRation);
title("Distribution of Rice Aspect Ratio");
xlabel("Rice Aspect Ratio");
ylabel("Density");