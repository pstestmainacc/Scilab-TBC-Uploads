clear;
clc;
R=30;L=0;G=0;C=7000*(10^-12);f=3/(2*%pi)*(10^3);r=35;l=70*(10^-3);
d=1;
Rc=R+(r/d);
Lc=L+(l/d);
Fc=1/(%pi*(sqrt(Lc*C*d)));
printf("-Approximate value of highest frequency = %f kHz\n",round(Fc*(10^-3)*100)/100);
al=((Rc/2)*sqrt(C/Lc))+((G/2)*sqrt(Lc/C));
printf("-Approximate value of attenuation per km after = %f neper/km",round(al*10^4)/10^4);