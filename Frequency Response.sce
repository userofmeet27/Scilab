R=1000
C=10^-6
f=0:100:1000
s=%s
Av=[]
Phase=[]
f0=1/(2*%pi*R*C)
disp(f0)
for i=1:length(f)
A=1/(sqrt(1+(2*%pi*f(i))^2*R^2*C^2))
Av(i)=20*log10(A)
Phase(i)=atan(-(2*%pi*f(i)*R*C)/1)
end
subplot(2,2,1)
plot(f,Av,color='red')
title("Gain(in dB)")
subplot(2,2,2)
plot(f,Phase,color='green')
title("Phase")
subplot(2,2,3)
s=poly(0,'s')
h=syslin('c',(1)/(1+R*C*s))
bode(h,0.01,1000)
title("Bode Plot")
