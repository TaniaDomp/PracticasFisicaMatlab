%Programa que simula la carga y descarga
%de un condensador (capacitor). R*C se le llama "constante de
%tiempo"
R=50; % valor de la resistencia en ohms
C=47; %valor de la capacidad del condensador en microfarads
v0=10; %valor del voltaje de la fuente CC en volts
t1=0:0.5:20; %vector de tiempo de observacion de la carga
vc=v0*(1-exp(-(t1/R*C)));%voltaje en el condensador a la carga
plot(t1,vc,'b') %grafica la carga (azul)
axis([0 40 0 12])
title('CARGA Y DESCARGA DE UN CIRCUITO RC')
xlabel('segundos')
ylabel('Voltaje en el condensador Volts')
hold on
t2=0:0.5:20; %vector de tiempo de observacion de la descarga
vc2=v0*exp(-(t2/R*C)); %voltaje en el condensador a la descarga
plot(t2+20,vc2,'r') %grafica la descarga (rojo)
hold off