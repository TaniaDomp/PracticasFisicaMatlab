%Este programa de prueba dibuja un circulo de radio = 2
%Usa el comando comet de 2D
clc;clear;
theta=0:pi/180:1.5*pi;
r=2;
x=r*cos(theta); %Ecuacion parametrica de un circulo
y=r*sin(theta);
plot(x,y) %Dibuja un circulo de radio = 2
axis([-3,3,-3,3])
axis square
hold on
pause(3)
comet(x,y)