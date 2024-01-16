#Using subplots to plot sin and cos waves

f=1000
w=4
t=0:0.001/f:4/f
y1=w*sin(2*%pi*f*t)
subplot(211)
plot(t,y1)
y2=w*cos(2*%pi*f*t)
subplot(212)
plot(t,y2)

#Plotting both waves on one plot 

f=1000
w=4
t=0:0.001/f:4/f
y1=w*sin(2*%pi*f*t)
y2=w*cos(2*%pi*f*t)
plot(t,y1,t,y2)
