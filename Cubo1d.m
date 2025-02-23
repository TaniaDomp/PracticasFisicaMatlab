%Se trata de dibujar un cubo con la experiencia de Lineas2d.m
%Se tienen los puntos (8 puntos) con sus coordenadas x,y,z
%Se tiene una propuesta de 4 componentes de 3 lineas cada uno.
%Puede haber otras combinaciones. En este caso, se tienen
%A) del nodo 1 al 2 al 4 y al 5
%B) del nodo 3 al 2 al 4 y al 7
%C) del nodo 6 al 2 al 5 y al 7
%D) del nodo 8 al 4 al 5 y al 7
x=[10 1 1 10 10 1 1 10]; %coordenadas x(1) a x(8)
y=[10 10 10 10 1 1 1 1]; %coordenadas y(1) a y(8)
z=[10 10 1 1 10 10 1 1]; %coordenadas z(1) a z(8)
%Comp A
xdA=[x(1) x(1) x(1);x(2) x(4) x(5)];
ydA=[y(1) y(1) y(1);y(2) y(4) y(5)];
zdA=[z(1) z(1) z(1);z(2) z(4) z(5)];
plot3(xdA,ydA,zdA,'b')
axis equal
axis([0 15 0 15 0 15])
xlabel('X'),ylabel('Y'),zlabel('Z')
grid on
hold on
pause(2)
xdB=[x(3) x(3) x(3);x(2) x(4) x(7)];
ydB=[y(3) y(3) y(3);y(2) y(4) y(7)];
zdB=[z(3) z(3) z(3);z(2) z(4) z(7)];
plot3(xdB,ydB,zdB,'k')
pause(2)
xdC=[x(6) x(6) x(6);x(2) x(5) x(7)];
ydC=[y(6) y(6) y(6);y(2) y(5) y(7)];
zdC=[z(6) z(6) z(6);z(2) z(5) z(7)];
plot3(xdC,ydC,zdC,'r')
pause(2)
xdD=[x(8) x(8) x(8);x(4) x(5) x(7)];
ydD=[y(8) y(8) y(8);y(4) y(5) y(7)];
zdD=[z(8) z(8) z(8);z(4) z(5) z(7)];
plot3(xdD,ydD,zdD,'g')