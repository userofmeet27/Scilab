function [y]=Arb(n)
P=modulo(n,2)
if P~=0 then
b=10/(n*%pi)
else
b=0
end
y=b*sin(n*w*t)
endfunction
V=5
f=1/(2*%pi)
w=2*%pi*f
t=0:0.01/f:10/f
a=0:1:100
F=0
for i=1:length(a)
x=Arb(a(i))
F=F+x
end
plot(t,F)
