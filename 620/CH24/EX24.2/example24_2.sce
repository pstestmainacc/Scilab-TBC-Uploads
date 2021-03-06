l=30*10^(-3);
r=200;
v=10;
f=1000;
disp("Part a");
x_l=2*%pi*f*l;
z=sqrt(r^2+x_l^2);
disp("the impedance (in Ω) of the circuit is"); disp(z);
disp("Part b");
i=v/z;
disp("the current (in A) in the circuit is"); disp(i);
disp("Part c");
deg=atan(x_l/r)*180/%pi;
disp("the phase angle (in deg) between applied voltage and current is"); disp(deg);