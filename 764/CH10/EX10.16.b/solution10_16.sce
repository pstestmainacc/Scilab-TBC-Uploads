//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0)
        v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution10_16.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_16.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions10_16.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate the maximum force on the spring Pmax (N)
Pmax = Pmin + (p1 - p2)*((%pi/4) * dia^2)
//Calculate the spring stiffness k (N/mm)
k = (Pmax - Pmin)/l
//Calculate the Wahl Factor K
K = ((4*C - 1)/(4*C - 4)) + (0.615/C)
//Calculate the shear stress concentration factor Ks
Ks = 1 + 0.5/C
//Assume the wire diameter to be 1mm d
d = 1
//Calculate the shear stress in the spring tau (N/mm2)
tau = (K * 8 * Pmax * C)/(%pi * d^2)
while(gr ~= 'SW' & gr ~= 'VW')
    printf("\n")
    gr = input("Enter the appropriate steel grade: ","string")
end
if (gr == 'SW')
    col = 2
elseif (gr == 'VW')
    col = 3
end
row = 4
trials = 0
//Read the oil-hardened and tempered data-file
numeric = read_csv(path + filesep() + 'table10_2.csv')
//Calculate the actual wire diameter d
for i = 1:1:%inf
    trials = trials + 1
    dNew = evstr(numeric(row, 1))
    tauNew = tau/(dNew^2)
    Sut = evstr(numeric(row, col))
    taud = (r/100)*Sut
    if (taud > tauNew)
        break()
    end
    row = row + 1
end
dmod = dNew
val = (C * dmod) + dmod
//Account for fluctuating stresses dmod (mm)
while (val < (Dmax - 5))
dmod = evstr(numeric((row + 1), 1))
val = (C * dmod) + dmod
row = row + 1
end
//Retrieve the column number of dmod from the table10_2.csv file
row = 4
for i = 1:1:%inf
    if (evstr(numeric(row, 1)) == dmod)
        SutNew = evstr(numeric(row, col))
        break()
    end
    row = row + 1
end
//Calculate the mean coil diameter D (mm)
D = C * dmod
//Calculate the number of active turns N
N = (G * (dmod^4))/(8 * (D^3) * k)
Nround = ceil(N)
//Calculate the total number of coils Nt
Nt = active_coils(endtype, Nround)
//Calculate the solid length of the spring s (mm)
s = Nt * dmod
//Calculate the maximum deflection of the spring deltamax (mm)
deltamax = (8 * Pmax * (D^3) * Nround)/(G * (dmod^4))
//Calculate the free length of the spring len (mm)
len = ceil(s + ((Nt - 1)*g) + deltamax)
lenround = round_five(len)
//Calculate the mean force Pm (N)
Pm = (Pmax + Pmin)/2
//Calculate the force amplitude Pa (N)
Pa = (Pmax - Pmin)/2
//Calculate the mean shear stress taum (N/mm2)
taum = (Ks * 8 * Pm * D)/(%pi * dmod^3)
//Calculate the shear stress amplitude taua (N/mm2)
taua = (K * 8 * Pa * D)/(%pi * dmod^3)
//Calculate the endurance limit in shear Se (N/mm2)
Se = 0.22 * SutNew
//Calculate the yield shear strength Ssy (N/mm2)
Ssy = 0.45 * SutNew
//Calculate the factor of safety fs
fs = (((taua*(Ssy - Se/2))/(Se/2) + taum)/Ssy)^-1
//Print results
printf("\nFactor of safety(fs) = %0.2f\n",fs)
//Print results
printf("\nWire diameter(d) = %f mm\n",dmod)
printf("\nMean coil diameter(D) = %f mm\n",D)
printf("\nFree length(len) = %f mm\n",lenround)
printf("\nTotal number of coils(Nt) = %d\n",Nt)
