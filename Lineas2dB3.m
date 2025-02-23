%Este es un ensayo para la utilizacion del
%comando line ([x1 x2],[y1 y2])
%que dibuja una linea entre los puntos x1 y1 y x2 y2
%lo interesante es que puede usarse en loops
%para multiple lineas en una grafica.
%Ejemplo
x=[-2:0.01:4];
y=3*x.^3-26*x+6;
plot(x,y,'b')
axis([-2 4 -40 100])
grid on
hold on
xlabel('Valor de x')
ylabel('Valor de y')
pause(3)
%Sombrea los negativos
for k=1:5:length(y)
 if y(k)<=0
 line([x(k) x(k)],[0 y(k)])
 pause(0.2)
 end
end
pause(3)
line([-2 4],[0 0]) %Coloca la linea de zero