function [ttot, Vox, Voy] = fDosproyec(v0,theta)
%calcula el tiempo total y los puntos de x por medio de la velocidad
%inicial y un angulo
g=9.81;
Vox=v0*cos(theta*pi/180);
Voy=v0*sin(theta*pi/180);
thmaxA=Voy/g;
ttot=2*thmaxA;
end

