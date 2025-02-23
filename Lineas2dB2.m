%Ensayo para dibujar lineas en 2d
%linea recta entre dos puntos 2D
%punto A x1,y1 punto B x2,y2
%Efecto de rotaci?n sobre un punto
%sin ecuaciones trigonolmetricas
x1=5;y1=5;
x2=10;y2=12;
plot(x1,y1,'o',x2,y2,'o')
axis([0 15 1 15])
grid on
hold on
x=[x1:0.05:x2]; %definir el vector independiente
m=(y2-y1)/(x2-x1); %pendiente de la recta
y=(m.*(x-x1))+y1; %vector dependiente
plot(x,y,'r')
pause(3)
%ecuacion circulo
r=sqrt((x1-x2)^2+(y1-y2)^2);
xplot=[x2:-0.05:x1];
yplot=sqrt(r^2-(x1-xplot).^2)+y1;
%plot(xplot,yplot)
for k=5:5:length(xplot)
xn=[x1:0.05:xplot(k)];
mn=(yplot(k)-y1)/(xplot(k)-x1);
yn=(mn.*(xn-x1))+y1;
plot(xn,yn,'b')
pause(0.3)
end