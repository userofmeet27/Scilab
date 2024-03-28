# This code verifies the commutative property in Convolution

clc;
clear;
xdel(winsid());
x1=input("Enter the Sequence_1 :"); // [1 2 3 4 5];
x2=input("Enter the Sequence_2 :"); // [1 2 3 4 5]; 
n = length(x1);
m = length(x2); 
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
scf();

subplot(2,2,1); 
plot2d3(x1);
title('Sequence_1 ""x1""','color','red','fontsize', 4);
xlabel("Index", "fontsize", 2,"color", "blue",'position',[0.6 0.3]); 
ylabel("Amplitude", "fontsize", 2, "color", "blue");

subplot(2,2,2); 
plot2d3(x2);
title('Sequence_2 ""x2""','color','red','fontsize', 4);
xlabel("Index", "fontsize", 2,"color", "blue",'position',[0.6 0.3]); 
ylabel("Amplitude", "fontsize", 2, "color", "blue");

subplot(2,2,3); plot2d3(w);
title('Convoled Sequence ""x1*x2"" ','color','green','fontsize', 4); 
xlabel("Index", "fontsize", 2,"color", "blue",'position',[0.3 0.3]); 
ylabel("Amplitude", "fontsize", 2, "color", "blue");

subplot(2,2,4); 
plot2d3(v);
title('Convoled Sequence ""x2*x1"" ','color','green','fontsize', 4); 
xlabel("Index", "fontsize", 2,"color", "blue",'position',[0.3 0.3]); 
ylabel("Amplitude", "fontsize", 2, "color", "blue");
