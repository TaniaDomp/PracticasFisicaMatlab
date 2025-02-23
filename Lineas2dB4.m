%Graficado de lineas por matrices
%Se trata de un cuadrado con cuatro puntos
%el punto P1= 20,20 el P2= 10,20 P3=10,10 P4=20,10
%se hace un vector (x) y otro (y) y luego
%otra matriz de "conexiones"
%o sean dos rectas del nodo P1 al P2 y al P4 y otras
%dos rectas del nodo P3 al P2 y al P4
x=[20 10 10 20];
y=[20 20 10 10];
xd1=[x(1) x(1);x(2) x(4)];
yd1=[y(1) y(1);y(2) y(4)];
xd2=[x(3) x(3);x(2) x(4)];
yd2=[y(3) y(3);y(2) y(4)];
%dibuja al mismo tiempo 4 rectas
plot(xd1,yd1,'b',xd2,yd2,'r')
axis([0 30 0 30])
axis equal
grid on