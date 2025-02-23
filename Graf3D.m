%Programa de graficado 3D con funciones Matlab
clear,clc
x=linspace(0,20*pi,10000);
y=cos(x);
z=sin(x);
comet3(x,y,z)
hold on
plot3(x,y,z)
grid on
xlabel('angulo'),ylabel('cos(x)'),zlabel('sin(x)'),title('Un resorte')