### Code
```Scilab
fs=1
n=0:1/fs:10 
x=exp(-n)
plot2d3(x) 
x1=[x, zeros(1,100)]; //zero padding for better
y=fft(x1);
plot2d3(abs(fftshift(y)))
```
### Output
![image](https://github.com/userofmeet27/Scilab/assets/154442221/0abb4024-99bf-4599-9eaa-eded98c5cb64)
