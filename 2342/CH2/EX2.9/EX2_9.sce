// Exa 2.9
clc;
clear;
close;
format('v',8)
// Given data
d = 1.03;// in mm
d = d *10^-3;// in m
r = d/2;// in m
R = 6.51;// in ohm
l = 300;// in mm
e = 1.6*10^-19;// electron charge in C
n = 8.4*10^28;// in /m^3
A = %pi*r^2;// cross section area
//Formula  R = Rho*(l/A);
Rho = (R* A)/l;//in ohm m
Sigma = 1/Rho;// in mho/m
disp(Sigma,"The conductivity of copper in mho/m is");
// Evaluation of mobility
//Formula sigma = n*e*Miu_e
Miu_e = Sigma/(n*e);// in m^2/V.sec
disp(Miu_e,"The mobility in m^2/V-sec is");
