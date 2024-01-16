#User defined function for finding the factorial of the first n numbers

function[q]=fact(b)
    a=1
    q=[]
    for i=1:b
        a=a*i
        q=[q a]
    end
endfunction
y=fact(5)
disp(y)
