clear;
x=[1 0 0 0 0]
lx=0:length(x)-1
a=input("enter positive number:") 
for n=1:length(x)
  h(1,n)=exp(-a*n) 
end
clin=conv(x,h)
//n=1:1:length(x)+length(y)-1; 
xgrid;
subplot(4 ,1 ,1) ; a=gca();
a.x_location = "origin"; 
a.y_location = "origin"; 
a.foreground = 4;

title ('Input Sequence x[n]'); 
xlabel ('Samples n');
ylabel ('Amplitude'); 
xgrid;
subplot(4 ,1 ,2); 
xgrid;
a=gca();
a.x_location = "origin"; 
a.y_location = "origin"; 
a.foreground = 4; 
plot2d3(h);
title ('Impulse response h[n]' ); 
xlabel ('Samples n');
ylabel ('Amplitude' ); 
xgrid;
subplot(4 ,1 ,3) ;

xgrid; a=gca() ;
a.x_location = "origin"; 
a.y_location = "origin"; 
a.foreground = 4; plot2d3(clin);
title ('linear convolution of x[n] and h[n]' ); 
xlabel ('Samples n');
ylabel ('Amplitude' );
xpad = [x zeros(1,length(h)-1)];
hpad= [h zeros(1,length(x)-1)]; 
ccirc = ifft(fft(xpad).*fft(hpad)); 
xgrid;
subplot(4 ,1 ,4) ; 
xgrid;
a=gca() ;
a.x_location = "origin"; 
a.y_location = "origin"; 
a.foreground = 4; plot2d3(ccirc);
title ('linear convolution of x[n] and h[n] using ifft' ); 
xlabel ('Samples n');
ylabel ('Amplitude' )
