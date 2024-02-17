function [y]=Ramp(n)
P=modulo(n,1)
if P==0 then
b=2/(n*%pi)
else
b=0
end
y=b*sin(n*w*t)
endfunction
V=1
f=1/(2*%pi)
w=2*%pi*f
t=0:0.01/f:10/f
a=0:1:100
F=V
for i=1:length(a)
x=Ramp(i)
F=F+x
end
plot(t,F)
