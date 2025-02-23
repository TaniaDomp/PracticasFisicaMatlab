%Programa para probar una entrada "grafica" de datos
% a partir de la seleccion de puntos en una grafica
clc,clear
%ejemplo
x=5:30;
y=x.^2-40*x +400;
plot(x,y)
axis([5 30 -50 250])
hold on
[xp,yp]=ginput(5) %a seleccionar cinco puntos
 %aparece una reticula
%seleccione cada punto dando click en el mouse
%para ingresar (xp) y (yp)
%ver las coordenadas en Command Window y en
%Workspace (variables)
plot(xp,yp,'r')