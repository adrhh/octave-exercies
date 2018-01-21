function  k = sum(z)
sum = 0

for i = 1:rows(z)
  for j = 1:columns(z)
    if(i < j)
      sum = A(i,j);
    end
  endfor
endfor


endfunction
