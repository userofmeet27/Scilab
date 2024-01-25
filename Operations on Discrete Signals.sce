//SIGNAL ADDITION
x1=input("Enter element for signal 1")x2=input("Enter
element for signal 2")
if (length(x1)>length(x2)) then
z=x1
else
z=x2
end
for i=1:length(z)
if i>length(x1) then
x1(i)=0
else if i>length(x2) then
x2(i)=0
end
end
end
for i=1:length(z)
z(i)=x1(i)+x2(i)
end
disp(x1,x2,z)

//SIGNAL FLIPPING
x=input("Enter the Sequence :");
xn=mtlb_fliplr(x);
p=1:length(x);
pn=-mtlb_fliplr(p);
subplot(2,2,1)
bar(p,x)
subplot(2,2,2)
bar(pn,xn)

//SIGNAL SHIFTING 
x1=input("Enter the sequence:")
z=x1
for i=1:length(z)
if ((i-3)<=length(x1)) & (i>3)
thenz(i)=x1(i-3)
else
z(i)=0
end
end
mprintf("Signal Before Shifting:")
disp(x1)
mprintf("Signal After Shifting:")
disp(z)

//PERFORMING OPERATIONS ON  2*x1(n) + 3*x2(n)
x1=input("Enter element for signal 1")
x2=input("Enter element for signal 2")
if (length(x1)>length(x2))
thenz=x1
else
z=x
2end
for i=1:length(z)
if i>length(x1)
thenx1(i)=0
else if i>length(x2)
thenx2(i)=0
end
end
end
for
i=1:length(z)
x1(i)=2*x1(i)
x2(i)=3*x2(i)
z(i)=x1(i)+x2(
i)
end
disp(x1,x2
mprintf("Final Output:")
disp(z)

//TO MULTIPLY x1(n) and x2(n-3)
x1=input("Enter element for signal 1")
x2=input("Enter element for signal 2")
if (length(x1)>length(x2)) then
  z=x1
else
  z=x2
end
for i=1:length(z)
  if ((i-3)<=length(x2)) & (i>3) then
    z1(i)=x2(i-3)
  else
    z1(i)=0
  end
end
for i=1:length(z)
  if (i<=length(x1)) & ((i-3)<=length(x2)) & (i>3) then
    z(i)= x1(i) .* x2(i-3)
  else
    z(i)=0
  end
end
disp(x1,z1)
mprintf("Final Output:")
disp(z)

// x(n)=2δ(n+2)-δ(n-4), -5<=n<=5.
function [A]=Imp(n)
for i=1:length(n)
if n(i) == 0
A(i)=1
else
A(i)=0
end
end
endfunction
n= -5:5
xn= 2*Imp(n+2) - Imp(n-4)
bar(n,xn)

// x(n)=n[u(n)-u(n-10)+exp(-0.3(n-10))[u(n-10)-u(n-20)], 0<=n<=20
X=[]
for i=1:10
    X(i)=i
end
for i=11:20
    X(i)=i*exp(-0.3*(i-10))
end
n=length(X)
t=1:n
plot2d3(t,X)

// 2*x(n-5)-3*x(n+4)
x1=input("Enter signal sequence:")
z1=x1
for i=1:length(z1)+5
if ((i-5)<=length(x1)) & (i>5)
thenz1(i)= x1(i-5)
else
z1(i)=0
end
end
z2=x
1
for i=1:length(z1)
if ((i+4)<=length(x1)) then
z2(i)= x1(i+4)
else
z2(i)=0
end
end
Z=z1
if (length(z1)>length(z2)) then
Z=z1
else
Z=z2
end
for i=1:length(Z)
if i>length(z1) then
z1(i)=0
else if i>length(z2) then
z2(i)=0
end
end
end
for i=1:length(Z)
z1(i)=2*z1(i)
z2(i)=3*z2(i)
Z(i)=z1(i)-z2(i)
end
mprintf("Final Output:")
disp(Z)
