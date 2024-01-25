clc;
clear;
t=0:0.1:20
f=0.2

//SINE WAVE
subplot(241)
x1=sin(2*%pi*f*t)
plot(t,x1)

//COSINE WAVE
x2=cos(2*%pi*f*t)
subplot(242)
plot(t,x2)

//IMPULSE SIGNAL
t1=-1000:1000
x3=[zeros(1,1000) 1 zeros(1,1000)]
subplot(243)
plot(t1,x3)

//RAMP SIGNAL
t2=0:10
x4=t2
subplot(244)
plot(t2,x4)

//EXPONENTIALLY INCREASING SIGNAL
t5=0:10
x5=exp(t5)
subplot(245)
plot(t5,x5)

//RANDOM SINGAL
x6=rand(1,100)
subplot(246);
plot(1:length(x6),x6)

//IMPULSE SEQUENCE
n1=1
n0=50
n2=100
n=[n1:n2]
x7=[(n-n0)==0,1]
subplot(247)
plot(n,x7(n1:n2))

//STEP SEQUENCE
clc
clear
t=-10:10
x1=[zeros(1,10) 1 ones(1,10)]
plot2d3(t,x1)
title("Step Sequence")
xlabel("Time-->")
ylabel("Magnitude-->")

//UNDER-DAMPED EXPONENTIAL SIGNAL
clc;
clear;
f=1;
t=0:0.01/f:10/f;
x1=exp(-t);
y=sin(2*%pi*t*f);
x2=-exp(-t);
z=x1.*y;
plot(t,z);
plot(t,x2);
plot(t,x1);
title('Underdamped Exponential Signal Graph','fontsize',4);
xlabel("Time-->");
ylabel("Magnitude-->");

//UNDER-DAMPED EXPONENTIAL SIGNAL TILL 20sec
clc
clear
f=1
t=0:0.01/f:20/f
x1=exp(-t)
y=sin(2*%pi*t*f)
x2=-exp(-t)
z=x1.*y
plot(t,z)

//rect(n/10)
N=5
k=-5:5
X=[ones(1,5) 1 ones(1,5)]
plot2d3(k,X)

//tri(n/14)
T=7
m=-7:7
Y=[]
for i=1:length(m)
 Y(i)= 1 - (sqrt(m(i)^2)/T)
end
disp(Y)
plot2d3(m,Y)
