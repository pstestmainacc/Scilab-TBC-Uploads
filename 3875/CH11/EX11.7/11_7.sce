clc;
clear;
unit_cell_edge_x=%inf //intercept of x
unit_cell_edge_y=1 //intercept of y
unit_cell_edge_z=(2/3) //intercept of z

//calculations
Reciprocal_x=1/unit_cell_edge_x //reciprocal value of miller index x
Reciprocal_y=1/unit_cell_edge_y //reciprocal value of miller index y
Reciprocal_z=1/unit_cell_edge_z //reciprocal value of miller index z
Reciprocal_xyz=[1,1,2]//creating integer vector for LCM calculation of numerator of all unit cell edges since denominator consists of 0 and LCM is 1
LCM=double((lcm(Reciprocal_xyz))) //LCM of unit cell edges
coordinate_A=(Reciprocal_x)*LCM
coordinate_B=Reciprocal_y*LCM
coordinate_C=(Reciprocal_z)*LCM

mprintf("The required miller indices of the plane are (%d,%d,%d).",coordinate_A,coordinate_B,coordinate_C)
