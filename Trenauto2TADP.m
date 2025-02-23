%Un tren y un auto se aproximan a un crucero x,y
%El tren se encuentra a 120 mt del crucero y
%el auto se encuentra a 62 mt en t=0
%El tren viaja a una velocidad constante de 86km/h
%el auto en t=0 va a 45km/h pero acelera 1.22mt/sec^2
%Chocan ambos vehiculos?
%Hacer una tabla con los valores de (x),y (y) la distancia
%entre ambos vehiculos d=sqrt(x^2+y^2)
pot=-100; %posicion en mts antes del crucero (tren)(t=0)
poc=-62; %posicion en mts antes del crucero (carro)(t=0)
vot = (86 * 1000)/3600; %conversion de km/hora en mt/seg
voc = (45 * 1000)/3600;
ac = 1.22; %mt/seg^2
YC = 0; %Eje del coche
XT = 0; %Eje del tren
plot(poc,YC,'*')%grafica el punto inicial del auto con *
axis([-150,150,-150,150])
hold on
plot(XT,pot,'*')%grafica el punto inicial del tren con *
for t=1:0.04:10
 x = poc + voc*t + 0.5*ac*t.^2;
 y = pot + vot*t;
 axis([-150,150,-150,150])
 plot(x,YC,'>') %pone > en la trayectoria del auto
 plot(XT,y,'^') %pone ^ en la trayectoria del tren
 pause(0.05)
end
hold off
