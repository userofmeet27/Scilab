//Code for mean and standard deviation of the matrix

function[mr,mc,sr,sc]=mat(A)
    mr=mean(a,'r')
    mc=mean(a,'c')
    sr=stdev(a,'r')
    sc=stdev(a,'c')
endfunction

a=input("Enter the matrix: ")
[b,c,d,e]=mat(a)
disp('Matrix entered',a)
disp('Mean of the rows of matrix:',b)
disp('Mean of the columns of matrix:',c)
disp('Standard deviation of the rows of matrix:',d)
disp('Standard deviation of the columns of matrix:',e)
