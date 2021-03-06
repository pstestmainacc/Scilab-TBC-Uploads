clc;
Zo=500*exp(%i*(-%pi/(180/43)));l=10;P=0.07+(%i*0.08);Vs=5;
V=Vs*(exp(-P*l));
I=V/Zo;
C=real(V);
D=imag(V);
E=real(I)*(10^3);
F=imag(I)*(10^3);
printf("-R.m.s.voltage at the required distance is V = %f /_ %f V\n",round(abs(V)*10)/10,round(atan(D,C)*180*10/%pi)/10);
printf("-R.m.s.current at required distance is I = %f/_ %f  mA",round(abs(I)*10^3),round(atan(F,E)*180*10/%pi)/10);
