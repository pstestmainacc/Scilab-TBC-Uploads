//example 2.11(a)//
//find 2's complement of binary number//
clc
//clears the window//
clear
//clears all the existing variables//
x=01100100
//the number//
xd=bin2dec('01100100')
//binary to decimal conversion//
xc=bitcmp(xd,8)
//one's complement of the number//
xp=xc+1
xc1=dec2bin(xp)
//2's complement of the number//
disp('2s complement of 01100100 is : ')
disp(xc1)
//answer in 2's complement form//