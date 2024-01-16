#To check if the given 10 random numbers are even or not 

x=int(10*rand(1:10))
even=[]
odd=[]
for i=x
    if modulo(i,2)==0
        even=[even i]
    else
        odd=[odd i]
    end
end
disp("The random numbers considered:",x)
disp("Even numbers:",even)
disp("Odd numbers",odd)

#Function to determine the same:-

function[X]=sorter(A)
    even=[]
    odd=[]
    for j=A
        if modulo(j,2)==0 then
            even=[even j]
        else
            odd=[odd j]
            end
    end
    disp("Input :-",A)
    disp ("Even:-",even)
    disp("Odd:-",odd)
endfunction

G=[2,3,4,5,6]
[H]=sorter(G)
