%Funcion que calcula el cuadrado de medios de raiz (Promedio del perfil similar en concepto a 
% regresión lineal)
function [Rq] = RqValues(vectf)
z = Zvalues2(vectf);
Rq = 0;
for zi=1:length(vectf)
 Rq = Rq + (vectf(zi) - z)^2;
end
Rq = sqrt(Rq/length(vectf));
end