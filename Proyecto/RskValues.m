%Funcion que calcula la medida de asimetría y asimetría del perfil sobre el línea media
function [Rsk] = RskValues(vectf)
z = Zvalues2(vectf);
Rq = RqValues(vectf);
Rsk = 0;
for zi=1:length(vectf)
 Rsk = Rsk + (vectf(zi) - z)^3;
end
Rsk = Rsk/(length(vectf)*(Rq^3));
end