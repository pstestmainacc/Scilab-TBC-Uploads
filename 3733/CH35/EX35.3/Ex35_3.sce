// Example 35_3
clc;funcprot(0);
//Given data
// C_1=840000+840 kW+0.116 kWh
// C_2=500000+440 kW+0.2985 kWh
A_1=840;
A_2=440;
B_1=0.116;
B_2=0.2985;
MD=64000;// kW
t=8760;// hours

// Calculation
L=(A_1-A_2)/(B_2-B_1);// Time in hours
P_p=(MD/t)*L;// kW
P_b=MD-P_p;// kW
E_b=((1/2)*(L+t)*(P_b));// The kWh generated by base load plant
E_p=((1/2)*L*P_p);// The kWh generated by peak load plant
E_t=E_b+E_p;// // Total energy generated in kWh
C_1=840000+(A_1*P_b)+(B_1*E_b);// rupees
C_2=500000+(A_2*P_p)+(B_2*E_p);// rupees
C=C_1+C_2;// Total cost in rupees
Gc=C/E_t;// Generating cost in rupees
printf('\nGenerating cost=Rs.%0.2f/kWh',Gc);
// The answer vary due to round off error