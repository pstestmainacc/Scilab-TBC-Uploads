clear;
clc;
e=1;
x1=.6;
x2=.25;
x0=.15;
ia=1;
xn=(3*e/3*ia)-((x1+x2+x0)/3);
ifault=1;
r=sqrt(8/9);
mprintf("the percentage reactance that should be added in the generator neutral =%fpercent\n",xn*100);
mprintf("resistance to be added in neutral to ground circuit to achieve the same purpose is %f",r);