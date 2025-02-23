%Programa de graficado de tres funciones
%Se trata de la primera y la segunda derivada de una funcion.
%La funcion es y=3x^3-26x+6

x=[-2:0.01:4];%limites de las funciones para el graficado
y=3*x.^3-26*x+6;%funcion original
yd=9*x.^2-26;%primera derivada
ydd=18*x;%segunda derivada
plot(x,y,'b')%grafica la original en b (blue)
grid on
hold on %superpone graficas
plot(x,yd,'--r')%grafica la primera derivada en r (red)rayas
plot(x,ydd,':k')%grafica la segunda derivada en k (black) punteada
xlabel('Valor de x')
ylabel('Valor de y')
hold off