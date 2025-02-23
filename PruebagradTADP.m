%Programa Script de prueba conversion grad a rads
for G=5:5:180 %Va desde 5 a 180 de 5 en 5 
 rads=grad2rads(G); %llamado a la funcion
 x(G)=G; %genera un vector para graficado
 y(G)=rads; %el otro vector para graficado
end
plot(x,y,'o-b')
grid on
xlabel('GRADOS')
ylabel('RADIANES')