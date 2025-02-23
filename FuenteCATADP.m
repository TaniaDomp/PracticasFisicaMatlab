%Grafica una senoide vs=v0*sin(w*t)
%v0 valor extremo + y -
%w frecuencia angular en radianes w=2*pi*f
%f frecuencia en ciclos/seg=Hz Hertz
%t vector con n instantes de observacion.
%En este ejemplo: f=60 Hz v0=110 Volts
%Tiempo total de observacion = 70 mseg=0.070 segs
%n=560 instantes de observacion

v0=110; %Valor de voltaje
f=60; %Valor de la frecuencia en radianes 
w=2*pi*f; %Velocidad angular, ciclos por 2pi radianes 
t=linspace(0,0.070,560); %probar con 280,140,70 y 35
vs=v0*sin(w.*t); %simulacion de la señal
plot(t,vs)
figure %indica que se hará otra figura con los instantes de observacion
plot(t,vs,'o-b') %para ver los instantes de observacion
title('Fuente de Corriente Alterna')
xlabel('Tiempo en segundos')
ylabel('Volts')