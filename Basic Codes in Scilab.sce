#This file contains some very basic codes in Scilab software which are just a proof of concept clarity

/*
#Multiplication of a matrix and its inverse which results into a unity matrix 
a=[1 1;1 -1]
b=inv(a)
disp(a*b)
*/

/*
#Code for sorting in reverse order
function[a]=sort(b)
    a=gsort(b,'g')
endfunction
z=int(15*rand(1:15))
y=sort(z)
disp("The array used: ",z)
disp("Sorted array:",y)
*/

/*
#To roundoff an array using a user defined function
function[x]=roundoff(a)
    x=round(a)
endfunction
b=[1.9 2.3;-1.1 50.5]
v=roundoff(b)
disp(v)
*/

/*
function[x]=ch(n)
    if n<10 then
        disp(n^2)
    else
        disp('Invalid')
    end
endfunction
a=11
ch(a)
*/

/*
#User defined function for checking the value of a given number
function[x]=ch(n)
    if n<10 then
        disp('n<10')
    elseif n>10 then
        disp('n>10')
    else
        disp('n')
    end
endfunction
a=-1
ch(a)
*/

/*
a=input("Enter")
if a<3 then
    disp(a^2)
elseif a<7 then
    disp(a+5)
else
    disp(a)
end
*/
