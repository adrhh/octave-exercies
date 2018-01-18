#clear screen
clc
#clear memory
clear


#string 
s = "test string";
s
#2X4 matrix
m = [1 2 3; 3 2 1];
#matrix access
n = m(1,2)

#test
answ = sin(pi/2)
answ = answ + 2
answ = answ ^ 3

#plot test
#t -2pi<t<2pi delta(t) = 0.05
t = [-2*pi : 0.05 : 2*pi];
s = sin(t);
c = 0.3 * cos(6*t);
#draw plot
plot(t,s, t, c), grid;
xlabel('t [s]');
ylabel('y(t)');
title('wykres');

#2plot test
clear;
t = [0: 0.01 : 4];
y = exp(-2*t) .* sin(3*t);
plot(t,y, 'r'); #red color


#3plot test
clear
t = [ 0 : 0.01 : 10 ] ; 
w = 1; 
y1 = exp(-0.5*t) .* sin(w*t) ; 
w = 3; 
y2 = exp(-0.5*t) .* sin(w*t) ;        
w = 10; 
y3 = exp(-0.5*t) .* sin(w*t) ;        
plot(t,y1,t,y2,t,y3); 
xlabel('t [s]'); 
ylabel ('y(t)'); 
title('Wykres funkcji');

#4plot test[x,y]=meshgrid(-3*pi : 0.5 : 3*pi, 
[x,y]=meshgrid(-3*pi : 0.5 : 3*pi);
z = 600 - x .* y + 50 * sin(x) + 50 * sin(y); 
subplot(2,1,1); mesh(x,y,z); 
subplot(2,1,2); surf(x,y,z)

