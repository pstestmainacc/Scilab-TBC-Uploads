V=400
I=80
pf=0.75
Pin=sqrt(3)*V*I*pf
Pshaft=Pin*0.85
disp(Pshaft)
ns=1000
s=0.04
n=(1-s)*ns
w=2*%pi*n/60
Tshaft=Pshaft/w
disp(Tshaft)
