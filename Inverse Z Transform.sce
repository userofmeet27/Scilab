clc 
clear 
z=%s
h=input("Enter Left side Equation:") 
a=coeff(h)
y=flipdim(a,2)
p=%s
h=input("Enter Right sided Equation(take p for z^-1):") 
a=coeff(h)
i=length(y) 
for
  j=i+2:length(a)+ iy(j-1)=a(j-i)
end
mprintf("Inverse Z transform is:") 
disp(y)
