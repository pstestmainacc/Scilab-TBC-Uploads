clc;
//e.g 19.5
Vcc=30;
Rc=10*10**3;
RL=3.3*10**3;
R1=47*10**3;
R2=15*10**3;
Re=8.2*10**3;
beta=200;
Vs=5*10**-3;
Vbe=0.7;
Vth=(Vcc*R2)/(R1+R2);
disp('V',Vth*1,"Vth=");
Rth=(R1*R2)/(R1+R2);
disp('10^3ohm',Rth*10**-3,"Rth=");
Ie=(Vth-Vbe)/(Re+(Rth/beta));
disp('mA',Ie*10**3,"Ie=");
re=25/(Ie*10**3);
disp('ohm',re*1,"re=");
rl=(Rc*RL)/(Rc+RL);
disp('Kohm',rl*10**-3,"rl=");
Av=rl/re;
disp(Av);
Vin=5;
V0=Av*Vin
disp('mV',V0*1,"V0=");
Ri=beta*re;
disp('Kohm',Ri*10**-3,"Ri=");
Ris=(Rth*Ri)/(Rth+Ri);
disp('Kohm',Ris*10**-3,"Ris=");