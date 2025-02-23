%Ensayo para dibujar lineas en 2d
%linea recta entre dos puntos 2D
%punto A x1,y1 punto B x2,y2
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
delta=-0.3; %desplazamiento en y
for s=1:10
 y1=y1+delta;
 y2=y2+delta;
 x=[x1:0.05:x2]; %definir el vector independiente
 m=(y2-y1)/(x2-x1); %pendiente de la recta
 y=(m.*(x-x1))+y1; %vector dependiente
 plot(x,y,'b')
 pause(0.5)
end
%pause
figure %Ahora se trata de desplazamiento en x
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
delta=-0.2; %desplazamiento en x
for s=1:10
 x1=x1+delta;
 x2=x2+delta;
 x=[x1:0.05:x2]; %definir el vector independiente
 m=(y2-y1)/(x2-x1); %pendiente de la recta
 y=(m.*(x-x1))+y1; %vector dependiente
 plot(x,y,'b')
 pause(0.5)
end 