x=input("Enter the Signal:") 
N=input("Enter no.of points:") 
n=0:N-1
k=n 
X=[]
for i=0:length(k)-1 
  y=0
  for j=0:length(n)-1
    y= y + x(j+1)*exp(-(%i*2*%pi*i*j)/N) 
  end
  X = [X y]
end
mprintf("DFT on given signal is:") 
for i=1:length(X)
  disp(X(i)) 
end
