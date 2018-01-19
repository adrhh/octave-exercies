clc;
clear;

#wektor punktow x
x = [1, 2, 4, 6, 8, 10]
y = [6, 6, 4, 2, 0, 10 ]

#rysuj wykres
plot(x,y);

#aprokysmacja wielomainem 2stopnia
#wielomian
w2 = polyfit(x, y, 2);
y2 = polyval(w2, x);

plot(x, y2);

#aprokysmacja wielomainem 3stopnia
#wielomian

w3 = polyfit(x, y, 3);
y3 = polyval(w3, x);

plot(x, y3);

#zestawienie
plot(x, y, 'r', x, y2, 'g', x, y3, 'b');


