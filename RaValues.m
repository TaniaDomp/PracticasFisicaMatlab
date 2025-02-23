%Funcion que calcula el promedio de rugosidad de el perfil
function [Ra] = RaValues(vectf)
z = Zvalues2(vectf);
Ra = 0;
for zi=1:length(vectf)
 Ra = Ra + abs(vectf(zi) - z);
end
Ra = Ra/length(vectf);
end