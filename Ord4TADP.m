%Programa que grafica una ecuacion de
%cuarto orden entre ciertos limites.
%Emplea la funcion ec4ord
x=linspace(-4,4,161);
y=ec4ord(x);
for t = [1:161]
plot (x(1:t), y(1:t))
axis ([-4 4 -60 60])
pause (0.05)
end
%plot(x,y) 
%plot(x,y,'o-b') %si se quieren observar los puntos de x
grid on