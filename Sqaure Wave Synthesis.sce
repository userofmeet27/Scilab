clc;
clear;
close;
v=1;
w=15;
t=0:0.001:0.99;
// synthesis of square wave using different number of harmonics
x1=(4*v/%pi)*(cos(w*t)-cos(3*w*t)/3);
x2=(4*v/%pi)*(cos(w*t)-cos(3*w*t)/3+cos(5*w*t)/5);
x3=(4*v/%pi)*(cos(w*t)-cos(3*w*t)/3+cos(5*w*t)/5-cos(7*w*t)/7);
x4=(4*v/%pi)*(cos(w*t)-cos(3*w*t)/3+cos(5*w*t)/5-cos(7*w*t)/7+cos(9*w*t)/9);
x5=(4*v/%pi)*(cos(w*t)-cos(3*w*t)/3+cos(5*w*t)/5-cos(7*w*t)/7+cos(9*w*t)/9-cos(11*w*t)/11);
x6=(4*v/%pi)*(cos(w*t)-cos(3*w*t)/3+cos(5*w*t)/5-cos(7*w*t)/7+cos(9*w*t)/9-
cos(11*w*t)/11+cos(13*w*t)/13);
subplot(3,2,1);
plot(x1);
title('Square Wave constructed with First 2 Components of Fourier Series');
xlabel('Samples');
ylabel('Amplitude (V)');
subplot(3,2,2)
plot(x2);
title('Square Wave constructed with First 3 Components of Fourier Series');
xlabel('Samples');
ylabel('Amplitude (V)');
subplot(3,2,3)
plot(x3);
title('Square Wave constructed with First 4 Components of Fourier Series');
xlabel('Samples');
ylabel('Amplitude (V)');
subplot(3,2,4)
plot(x4);
title('Square Wave constructed with First 5 Components of Fourier Series');
xlabel('Samples');
ylabel('Amplitude (V)');
subplot(3,2,5)
plot(x5);
title('Square Wave constructed with First 6 Components of Fourier Series');
xlabel('Samples');
ylabel('Amplitude (V)');
subplot(3,2,6);
plot(x6);
title('Square Wave Constructed with First 7 Components of Fourier Series');
xlabel('Samples');
ylabel('Amplitude (V)');
