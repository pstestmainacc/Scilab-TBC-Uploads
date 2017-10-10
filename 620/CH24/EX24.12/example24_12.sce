r=200;
x_l=400;
x_c=100;
v=40;
disp("Part a");
ir=v/r;
il=v/x_l;
ic=v/x_c;
i=sqrt(ir^2+(ic-il)^2);
disp("the total circuit current (in A) is");disp(i);
disp("Part b");
z=v/i;
disp("the impedance (in Ω) of the circuit is"); disp(z);
disp("Part c");
deg=atan((ic-il)/ir)*180/%pi;
disp("the phase angle (in deg) between circuit current and applied voltage sis"); disp(deg);