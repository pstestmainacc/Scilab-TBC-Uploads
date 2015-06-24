clear;
clc;
I_a=300;
V_s=600;
a=.6;
V_t=a*V_s;
P=V_t*I_a;    printf("input power from source=%.0f kW",P/1000);
R_eq=V_s/(a*I_a);    printf("\nequivalent input resistance=%.3f ohm",R_eq);
k=.004;
R=.04+.06;
w_m=(a*V_s-I_a*R)/(k*I_a);
N=w_m*60/(2*%pi);    printf("\nmotor speed=%.1f rpm",N);
T_e=k*I_a^2;    printf("\nmotor torque=%.0f Nm",T_e);