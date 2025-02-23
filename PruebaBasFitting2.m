%Segundo Programa para probar el
%Basic Fitting Tool de Matlab
%Este es un procedimiento semi-manual
x=[0:9];
y=[30 50 75 85 90 94 96 90 80 68];
plot(x,y,'o')
axis([0 11 20 100])
grid on
%La ecuacion con sus coeficientes es:
%p1x^4+p2x^3+p3x^2+p4x+p5
%Obtener de fit los coeficientes
p1 = -0.0067016;
p2 = 0.17152;
p3 = -3.6215;
p4 = 27.895;
p5 = 29.028;
%Proyeccion
xplot=[0:11]; %si la xplot va hasta un valor
% mayor que x se esta extrapolando;
% se trata de una proyeccion.
yplot=p1*xplot.^4+p2*xplot.^3+p3*xplot.^2+p4*xplot+p5;
figure
plot(xplot,yplot,'r')
axis([0 11 20 100])
grid on
hold on
plot(x,y,'o') %para ver los puntos originales