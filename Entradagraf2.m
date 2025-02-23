%Programa para graficar usando ginput (n)
%Se seleccionan (n) puntos con la reticula y el mouse dando click
%Al completar el ingreso de los n puntos se despliega la gráfica
%El orden de ingreso de los puntos es importante
%Ejemplo n=5 puntos
[x,y] = ginput(6);
plot(x,y)