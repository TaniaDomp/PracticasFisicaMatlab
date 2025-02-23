%Crea una grafica animada
%en lugar de plot (x,y) se pone
%plot (x(1:k), y(1:k)) en un loop de k = 1:n

n = 100;%numero total de puntos
x=linspace(-2*pi, 2*pi, n); %limites
y = cos(x);
%animacion 
for k = 1:n
    plot (x(1:k), y(1:k))
    axis([-2*pi, 2*pi, -1.5, 1.5])
    grid on
    pause (0.5)
end