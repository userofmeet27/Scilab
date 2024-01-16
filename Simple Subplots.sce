#Simple syntax for subplot

x=1:100
y1=x^2
y2=x^3
y3=2*x+3
subplot(311)
plot(x,y1)
subplot(312)
plot(x,y2)
subplot(313)
plot(x,y3)
