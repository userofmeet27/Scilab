### Code
```Scilab
clc
clear
fs=8000; //sampling rate
x1=[1 1 1 1, 0 0 0 0] //zero padding for better spectrum resolution
Xohm=[]
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
```
### Output
![image](https://github.com/userofmeet27/Scilab/assets/154442221/3225d2fa-d266-4f84-a961-be7e9b9ac33e)

### Code
#### For 1 cycle and in center
```Scilab
clc
clear
fs=24000; //sampling rate
x1=[1 1 1 1, 0 0 0 0] //zero padding for better spectrum resolution
Xohm=[]
for ohm=-3.14*24000/fs:0.1:3.14*24000/fs
    yk=0
    for n1=0:length(x1)-1
        yk=yk+x1(n1+1)*exp(-%i*ohm*n1);
    end
    Xohm=[Xohm yk]
end
ohm=-3.14*24000/fs:0.1:3.14*24000/fs
f=ohm*fs/(2*3.14)
magx=abs(Xohm)
phasex=atan(imag(Xohm),real(Xohm))
subplot(211)
plot(f,magx)
subplot(212)
plot(f,phasex)
```
### Output
![image](https://github.com/userofmeet27/Scilab/assets/154442221/7551142d-d0e2-4a62-970e-cf1ebbb145cc)
