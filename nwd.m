function k = nwd(a,b)
if(b == 0)
  k = a;
else
  k = nwd(b, mod(a,b));
end
endfunction
