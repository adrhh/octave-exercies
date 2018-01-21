clc;
clear;

#macierze

A = [1 2 ...
      3; 7 8 9];
      
 B = [1, 2, 3; 7, 8, 9];
 
 C = [1 2 3
      7 8 9];
      
 #generowanie
 
 w1 = 1: 0.31 : 3;
 w2 = -3:7;
 w3 = 10:-2:0;
 
 X = ones(2);
 Y = eye(3);
 Z = rand(2,5) % round(10*rand(3))
 
 U = [A, X; Z];
 V = [[9: -1:7; 1:3], zeros(2,1); 1 1 1 1];
 
 V(1,3);
 V(3,1);
 V(2, :);
 V(:, 2);
 V(7);
 
 #usuwanie
 V (:,4) = [];

 
 A = [1 0 0;
      2 3 -1;
      0 7 2];
      
 B = [1 0 3;
      -1 5 2;
      2 2 2];
      
 A+B;
 A-B;
 A+2;
 2*A;
 2.*A;
 
 MM1 = A*B;
 MM2 = B*A;
 
 DM1 = A\B;
 DM2 = A/B;
 
 PM = A^2;
 
 C = [1-i 2i 3;
      -1 5+3i 2+3i
      3+i  2 2];
 
 C.'
 
 function k = porownaj(a,b)
  if(a<b)
    k =-1;
  elseif (a>b)
    k = 1;
  else
   k = 0;
  end
 endfunction
 
  z = porownaj(2,3)
  z = porownaj(4,3)
  z = porownaj(3,3)
  
 function y = wiel(x)
  y = x.^3 + x.^2 - 3.*x -3;
endfunction
  
 x = [-5 : 0.1 : 5];
 y = wiel(x);
 
 %plot(x,y);
 
 function y = fun1(x)
  if(x < 0)
    y = sin(x);
  elseif(x > 0 && x < 1)
    y = x.^2;
  else
    y =1;
  end
 endfunction
 
 y = [-3 : 0.1 : 3];
 x = fun1(x);
 
 plot(x,y);
