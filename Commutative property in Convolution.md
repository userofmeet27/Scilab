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
    for j = max(1,k+1-m) : min(k,n)
        w(k)= w(k)+(x1(j)*x2(k+1-j));
    end
end
for k = 1:(m+n-1)
    v(k) = 0;
    for j = max(1,k+1-n) : min(k,m)
        v(k) = v(k)+(x2(j)*x1(k+1-j));
    end
end
subplot(221)
plot2d3(x1)
subplot(222)
plot2d3(x2)
subplot(223)
plot2d3(w)
subplot(224)
plot2d3(v)
```
### Output
![image](https://github.com/userofmeet27/Scilab/assets/154442221/43cc8336-dc0a-4035-a38e-eb437e01aa63)
