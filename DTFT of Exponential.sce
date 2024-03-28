fs=1; //sampling rate
n=0:1/fs:10 //10s duration (Increasing the value and observe spectrum)
x=exp(-n); 
plot2d3(x)
//x1=[x, zeros(1,100)]; //zero padding for better spectrum resolution y=fft(x1);
plot2d3(abs(fftshift(y)))
