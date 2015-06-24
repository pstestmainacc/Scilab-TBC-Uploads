P1 = 2100; //lb
P2 = 5600; //lb
b = 25; //inch
a = 28; //inch
A1 = 0.25; //inch^2
A2 = 0.15; //inch^2
L1 = 20; //inch
L2 = 34.8; //inch
E = 29e6; //29Gpa
P3 = (P2*b)/a ;
Ra = P3-P1;
N1 = -Ra ;
N2 = P1 ;
D = ((N1*L1)/(E*A1)) + ((N2*L2)/(E*A2)) ; //displacement
disp ("inch",D,"Downward displacement is = ")