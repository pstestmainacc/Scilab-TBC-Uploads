clc;
Acm=0.001;
Aol=180000;
Zin=1*10**6;
Zout=80;
SR=0.5;
R2=100*10**3;
R1=10*10**3;
Acl=R2/R1;
disp(Acl);
Zin=R1;
disp('kOhm',Zin*10**-3,"Zin=");
disp('Ohm',Zout*1,"Zout=");
CMRR=Acl/Acm;
disp(CMRR);
Vpk=5;
fmax=SR/(2*%pi*Vpk);
disp('kHZ',fmax*10**3,"fmax=");
