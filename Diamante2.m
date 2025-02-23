%Programa que dibuja una especie de diamante en 3D
%Version Nov2021
%son 6 puntos a conectar, la matriz es:
x=[5,0,-5, 0,0,0];
y=[0,5, 0,-5,0,0];
z=[5,5, 5, 5,6,0];
 plot3(x,y,z,'o') %plotea los puntos
 axis([-10,10,-10,10,0,10])
 grid on
 xlabel('EjeX'), ylabel('EjeY'), zlabel('EjeZ')
 title('Diamante')
 hold on
 pause(6)
xd=[x(6) x(6) x(6) x(6) x(6);x(1) x(2) x(3) x(4) x(5)];
yd=[y(6) y(6) y(6) y(6) y(6);y(1) y(2) y(3) y(4) y(5)];
zd=[z(6) z(6) z(6) z(6) z(6);z(1) z(2) z(3) z(4) z(5)];
plot3(xd,yd,zd,'b') %conecta el nodo 6 con el 1,2,3,4 y 5
pause(2)
xd1=[x(5) x(5) x(5) x(5); x(1) x(2) x(3) x(4)];
yd1=[y(5) y(5) y(5) y(5); y(1) y(2) y(3) y(4)];
zd1=[z(5) z(5) z(5) z(5); z(1) z(2) z(3) z(4)];
plot3(xd1,yd1,zd1,'b')%conecta el nodo 5 con el 1,2,3 y 4
pause(2)
xd2=[x(1) x(1); x(2) x(4)];
yd2=[y(1) y(1); y(2) y(4)];
zd2=[z(1) z(1); z(2) z(4)];
plot3(xd2,yd2,zd2,'b') %conecta el nodo 1 con el 2 y 4
pause(2)
xd3=[x(3) x(3); x(2) x(4)];
yd3=[y(3) y(3); y(2) y(4)];
zd3=[z(3) z(3); z(2) z(4)];
plot3(xd3,yd3,zd3,'b')%conecta el nodo 3 con el 2 y 4
hold off