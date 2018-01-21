clc
clear

function y = newton(x0, y0, x)

n = length(x0)-1;
D = ones(n+1, n+1);

for i=1: n+1
  D(i, 1) = y0(i);
endfor

for i=2: n+1
  for j=2: i
    D(i, j) = [D(i, j-1) - D(i-1, j-1)] / [x0(i) - x0(i-j+1)];
  endfor
endfor

y = D(1, 1);
w=1;
for i=2: n+1
  w = w .* (x - x0(i-1));
  y = y + D(i, i) * w;
endfor

endfunction

x0 = [1 2 4 6 8 10]
y0 = [6 6 4 2 0 0]
x = -1: 0.1: 7
hold on 
plot(x0, y0, "w");

w2 = polyfit(x0, y0, 2);
f2 = polyval (w2, x);
plot(x, f2, "w");

w3 = polyfit(x0, y0, 3);
f3 = polyval(w3, x);
plot(x, f3, 'w');

w5 = polyfit(x0, y0, 5);
f5 = polyval(w5, x);
plot(x, f5, 'w');

w6 = polyfit(x0, y0, 6);
f6 = polyval(w6, x);
plot(x, f6, "w");

fl = lagrange(x0, y0, x);
plot(x, fl, "g");

fn = newton(x0, y0, x);
plot(x, fn, "^b");

fa = aitken(x0, y0, x);
plot(x, fa, "*r");
hold off;

