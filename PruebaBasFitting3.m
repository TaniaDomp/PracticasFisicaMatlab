%Programa para probar Basic Fitting Tool de Matlab
%Este es un procedimiento semi-manual
x=[0 1 2 3 4 5];
y=[0 20 60 68 77 108];
plot(x,y,'o')
axis([0 6 0 200])
grid on

p1 = 20.5429;
p2 = 4.1429;
xplot=[0:8];
yplot=p1*xplot+p2;
figure
plot(xplot,yplot,'r')
axis([0 8 0 200])
grid on
hold on
plot(x,y,'o') %para ver los puntos originales