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
