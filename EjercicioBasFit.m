%Programa que saca las estadisticas de una empresa

x = [0:23];
y = [125 200 300 400 500 625 800 890 910 900 890 880 900 920 990 1030 1040 1025 1015 1000 980 970 955 940];
plot(x,y,'o')
grid on
%La ecuacion con sus coeficientes es:
%p1x^4+p2x^3+p3x^2+p4x+p5
%Obtener de fit los coeficientes
p1 = -0.0028536;
p2 = 0.25246;
p3 = -9.4874;
p4 = 157.5796;
p5 = 65.3864;
%Proyeccion
xplot=[0:29]; %si la xplot va hasta un valor
% mayor que x se esta extrapolando;
% se trata de una proyeccion.
yplot=p1*xplot.^4+p2*xplot.^3+p3*xplot.^2+p4*xplot+p5;
figure
plot(xplot,yplot,'r')
grid on
hold on
plot(x,y,'o') %para ver los puntos originales