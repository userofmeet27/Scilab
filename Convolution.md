### Code
```Scilab
clc
clear
x1=[1 2 3 4 5]
x2=[1 2 3 4 5]
n = length(x1)
m = length(x2)
for k = 1:(m+n-1) 
    w(k) = 0;
    for j =max(1,k+1-m) : min(k,n) 
        w(k)= w(k)+(x1(j)*x2(k+1-j))
    end 
end
subplot(3,1,1)
plot2d3(x1)
subplot(3,1,2) 
plot2d3(x2)
subplot(313)
plot2d3(w)
```
### Output
![image](https://github.com/userofmeet27/Scilab/assets/154442221/ca4894e8-4998-452b-914e-22b7a81e8ff1)
