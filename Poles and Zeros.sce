clc
h=syslin("d",[(%z+1)*(2)],[(%z - 1)*(%z-0.5)])
[z p k] = tf2zp(h);
mprintf("Given System:") 
disp(h)
mprintf("Zeros:") 
disp(z) 
mprintf("Poles:") 
disp(p)
plzr(h)


