R=1000
C=10^-6
f=0:0.001:1000
Av=[]
Phase=[]
f0=1/(2*%pi*R*C)
disp(f0)
for i=1:length(f)
A=(2*%pi*f(i)*R*C)./(sqrt(1+(2*%pi*f(i))^2*R^2*C^2))
Av(i)=20*log10(A)
end
plot(f,Av)
