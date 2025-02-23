%Calcula el crecimiento de una poblacion animal
%Se dice que la poblacion de canguros ha crecido
%ultimamente a razon de 7% cada ano.
%Al final de 2019 habia 2.5 millones
%Cuantos habra en diez anos mas? (2029)
%Usar expGD33 y graficar
n=[0:10]; %Diez anos a partir de ahora
A0=2.5; %Millones
k=0.07; %7%
Atn=expGD33(A0,k,n);
nN=n+2019; %normalizado
plot(nN,Atn)
grid on