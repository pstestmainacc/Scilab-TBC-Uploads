//caption:stability_using_Nyquist_criterion
//example 11_26_ii
//page 497
clf();
s=%s;
s1=-s;
disp("for K=4")
g=(4*(s-1))/((s+2)*(s+3));
g1=(4*(s1-1))/((s1+2)*(s1+3));
GH=syslin('c',g);
GH1=syslin('c',g1);
nyquist(GH);
nyquist(GH1);
mtlb_axis([-1 1 -1 1]);
xtitle('Nyquist plot of (2.5*(s+1))/((s+0.5)*(s-2))')
disp("since the point(-1+%i0) is  encircled anticlockwise by Nyquist plot ,so N=1 and P=1(given)")
N=0;//no. of encirclement of -1+%i0 by G(s)H(s) plot anticlockwise
P=0;//no. of poles of G(s)H(s) with positive real part
Z=P-N;//np.of zeros of 1+G(s)H(s)=0 with positive real part
disp(Z,"Z=")
disp("as Z=0,there are no roots of closed loop characterstics eq having positive real part, hence system is stable.")
