%Programa para probar Basic Fitting Tool de Matlab
%Este es un procedimiento semi-manual
x=[0 1 2 3 4 5];
y=[0 20 60 68 77 108];
plot(x,y,'o')
axis([0 6 0 200])
grid on
%Si el ajuste es conveniente (bajo nor y R2 hacia 1)
%Los Coeficientes se obtienen de fit
p1 = 1.0093;
p2 = -8.8016;
p3 = 40.53;
p4 = -2.9921;
xplot=[0:7]; %significa extrapolar (proyeccion)
yplot=p1*xplot.^3+p2*xplot.^2+p3*xplot+p4;
figure
plot(xplot,yplot,'r')
axis([0 7 0 200])
grid on
hold on
plot(x,y,'o') %para ver los puntos originales