%Dos proyectiles se disparan al mismo tiempo del mismo lugar.
%A tiene v0=680 mt/sec y theta=42grados
%B tiene v0=680 mt/sec y theta=65grados
%Cual llega antes a tierra? Graficar
g=9.81;
v0A=680;
thetaA=35;
v0Ax=v0A*cos(thetaA*pi/180);
v0Ay=v0A*sin(thetaA*pi/180);
thmaxA=v0Ay/g;
ttotA=2*thmaxA;
v0B=680;
thetaB=55;
v0Bx=v0B*cos(thetaB*pi/180);
v0By=v0B*sin(thetaB*pi/180);
thmaxB=v0By/g;
ttotB=2*thmaxB;
if ttotA>=ttotB
 tg=linspace(0,ttotB,200); %se escoge el tiempo mas corto
else
 tg=linspace(0,ttotA,200);
end
xA=v0Ax*tg;
xB=v0Bx*tg;
yA=v0Ay*tg-0.5*g*tg.^2;
yB=v0By*tg-0.5*g*tg.^2;
plot(xA,yA)
axis([0 50000 0 20000])
hold on
plot(xB,yB,'r')