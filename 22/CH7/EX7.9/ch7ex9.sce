//signals and systems
//continuous time signal analysis the fourier transform
//fourier transform of unit step function u(t)
clear;
clc;
A =0.000000001;    //Amplitude
Dt = 0.005;
t = 0:Dt:4.5;
xt = exp(-A*abs(t));
Wmax = 2*%pi*1;        //Analog Frequency = 1Hz
K = 4;
k = 0:(K/500):K;
W = k*Wmax/K;
XW = xt* exp(-sqrt(-1)*t'*W) * Dt;
XW = real(XW);
W = [-mtlb_fliplr(W), W(2:501)]; // Omega from -Wmax to Wmax
XW = [mtlb_fliplr(XW), XW(2:501)];
subplot(2,1,1);
a = gca();
a.y_location = "origin";
plot(t,xt);
xlabel('t in sec.');
ylabel('x(t)')
title('Continuous Time Signal')
subplot(2,1,2);
a = gca();
a.y_location = "origin";
plot(W,XW);
xlabel('Frequency in Radians/Seconds W');
ylabel('X(jW)')
title('Continuous-time Fourier Transform')
