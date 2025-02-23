%Programa Script de prueba conversion rads a grads
n=0;
for R=0:pi/45:2*pi %Va desde 5 a 180 de 5 en 5 
 grads=rads2grads(R); %llamado a la funcion
 n = n+1;
 x(n)=R; %genera un vector para graficado
 y(n)=grads; %el otro vector para graficado
end
length(x)
length(y)

XR = x/pi;
plot(XR,y,'b')
axis ([0 2 0 360])

%plot(x,y,'b')
%axis ([0 2*pi 0 360])

grid on
xlabel('VALOR EN RADIANES')
ylabel('GRADOS')