clear;
clc;
R=6;L=2*(10^-3);G=.5*(10^-6);C=.005*(10^-6);f=1000;l=100;
w=2*%pi*f;
Z=R+(%i*w*L);
Y=G+%i*w*C;
Zo=sqrt(Z/Y);
P=sqrt(Z*Y);
a=real(P);
b=imag(P);
a1=fix(a*8.66*l*10^3)/10^3;
printf("-Attenuation suffered while travelling = %f db\n",a1);
Vp=fix(w/b)/10^3;
printf("-Phase velocity Vp = %f km/sec",Vp );