//Example 5.3
clc                                                                     //clears the command window 
clear                                                                   //clears all the variables 
q=0;
b=0;
s=0;
format('v',18);                                                                        //increasing the precision to 18 .
//a=input("Enter the decimal no to be converted to its binary equivalent : ");         // accepting the decimal input from user 
a=23.6;
d=modulo(a,1);                                                                        //separating the decimal part and the integer part 
a=floor(a);                                                                            //removing the decimal part 

while(a>0)                                                                               //taking integer part in to a matrix and convert to equivalent binary 
    x=modulo(a,2);
    b= b + (10^q)*x;
    a=a/2;
    a=floor(a);
    q=q+1; 
end



for i=1:10                                                                             // For values after decimal point converting to binary
     d=d*2;
     q=floor(d);
     s=s+q/(10^i);
     if d>=1 then
         d=d-1;
     end
 end
 k=b+s;
printf("The binary equivalent of the given decimal number is = %f",k);                                                                                // displaying the final result.
 