%Dos proyectiles se disparan al mismo tiempo del mismo lugar.
%A tiene v0=680 mt/sec y theta=42grados
%B tiene v0=680 mt/sec y theta=65grados
%Cual llega antes a tierra? Graficar
g=9.81;
[ttotA, VoxA, VoyA] = fDosproyec(680, 35);
[ttotB, VoxB, VoyB] = fDosproyec(680, 55); %reduccion de codigo 
if ttotA>=ttotB
 tg=linspace(0,ttotB,200); %se escoge el tiempo mas corto
else
 tg=linspace(0,ttotA,200);
end
xA=VoxA*tg;
xB=VoxB*tg;
yA=VoyA*tg-0.5*g*tg.^2;
yB=VoyB*tg-0.5*g*tg.^2;
plot(xA,yA)
axis([0 50000 0 20000])
hold on
plot(xB,yB,'r')