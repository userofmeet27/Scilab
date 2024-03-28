clc clear fs=10
n=0:1/fs:10
for i=1:length(n) p=modulo(i,4)
  if p==0 then 
    x(1,i)=1
  else 
    x(1,i)=0
  end 
end
subplot(1,2,1) 
y=fft(x)
plot2d3(abs(fftshift(y))) 
x1=[x, zeros(1,100)] y=fft(x1)
subplot(1,2,2) 
plot2d3(abs(fftshift(y)))
