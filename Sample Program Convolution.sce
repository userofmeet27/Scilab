clc; clear;
xdel(winsid());
x1=input("Enter the Sequence_1 :");
// [1 2 3 4 5];
x2=input("Enter the Sequence_2 :");
// [1 2 3 4 5];

n = length(x1); m = length(x2); for k = 1:(m+n-1) w(k) = 0;
for j =max(1,k+1-m) : min(k,n) w(k)= w(k)+(x1(j)*x2(k+1-j)); end end scf();
subplot(3,1,1); plot2d3(x1);
title('Sequence_1','color','red','fontsize', 4);
xlabel("Index", "fontsize", 2,"color", "blue",'position',[0.6 0.3]);
ylabel("Amplitude", "fontsize", 2, "color", "blue"); subplot(3,1,2); plot2d3(x2); title('Sequence_2','color','red','fontsize', 4);
xlabel("Index", "fontsize", 2,"color", "blue",'position',[0.6 0.3]); ylabel("Amplitude", "fontsize", 2, "color", "blue"); subplot(3,1,3);
plot2d3(w);
title('Convoled Sequence','color','green','fontsize', 4); xlabel("Index", "fontsize", 2,"color", "blue",'position',[0.3 0.3]); ylabel("Amplitude", "fontsize", 2, "color", "blue");
