//Regular convolution
xn=[1 2 1 0];
yn=[1 2 1 0 0 0 0];
YDFT=fft(yn,-1)
SDFT=YDFT.*YDFT
sn=fft(SDFT,1)
sn1=convol(xn,xn)