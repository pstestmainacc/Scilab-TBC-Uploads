//Example_a_5_11 page no:212
clc;
Vs=10+(%i*20);
Z1=1+(%i*2);
Z2=3+(%i*4);
Z3=3+(%i*4);
Z23=(Z2*Z3)/(Z2+Z3);
Zt=Z1+Z23;
It=Vs/Zt;
Itmag=sqrt(real(It)^2+imag(It)^2);
Itang=atand(imag(It)/real(It));
theta=atand(real(Zt)^2+imag(Zt)^2);
Vp=Z23*It;
Vpmag=sqrt(real(Vp)^2+imag(Vp)^2);
Vpang=atand(imag(Vp)/real(Vp));
disp(Zt,"the total impedence is (in ohm)");
disp(Itmag,"the magnitude of total current in the circuit is (in A)");
disp(Itang,"the angle of total current in the circuit is (in degree)");
disp(Vpmag,"the magnitude of voltage across parallel branch is (in V)");
disp(Vpang,"the angle of voltage across parallel branch is (in degree)");