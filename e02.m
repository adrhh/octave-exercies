#e02f test
s = e02f(2,3)
s = e02f(3,2)
s = e02f(2,2)

#lambda
wiel = @(x) x .^3 + x .^2 - 3 .*x -3;
x = [-5:0.1:5];
y = wiel(x);

plot(x,y);

#macierz generator
mac  = @(n)rand(n)*10;

A = mac(4);
B = mac(4);

mm = A*B;
tm = A.*B;
md = A/B;

function k = sil(n)
    k = 1;
    for i = 1:n
       k = k * i;
    end
 endfunction
 
 function k = rsil(n)
    if (n<2)
      k = 1;
    else
      k = n * sil(n-1);
    end
 endfunction
 
 
 s5 = sil(5);
 rs5 = rsil(5);
 
 function k = fun(x)
   if (x < 1)
     k = x.*100;
   elseif (x >= 0)
     k = x.^2;
   else
    k =sin(x);
   end
 endfunction
 
 x1 = [-3:0.1:3];
 y1 = fun(x1);
 
 plot(x1,y1);
 
 