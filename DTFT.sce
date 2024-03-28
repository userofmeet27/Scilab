clc; close; clear;
fs=8000; //sampling rate
//10s duration (Increasing the value and observe spectrum)
//plot2d3(x)
x1=[1 1 1 1, 0 0 0 0]; //zero padding for better spectrum resolution Xohm=[];
for ohm=0:0.1:2*3.14*24000/8000 
  yk=0
  for n1=0:length(x1)-1 
    yk=yk+x1(n1+1)*exp(-%i*ohm*n1); 
  end
  Xohm=[Xohm yk] 
end
ohm=0:0.1:2*3.14*24000/8000
f=ohm*8000/(2*3.14) 
magx=abs(Xohm) 
phasex=atan(imag(Xohm),real(Xohm)) 
subplot(211)
plot(f,magx) 
subplot(212) 
plot(f,phasex)
