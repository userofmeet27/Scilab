#User defined function for finding fibonacci sequence of first 10 numbers

function[a]=fibo(c)
    x=0
    y=1
    z=x+y
    disp(x,y)
    for i=2:1:c
        disp(z)
        x=y
        y=z
        z=x+y
    end
endfunction
fibo(10)
