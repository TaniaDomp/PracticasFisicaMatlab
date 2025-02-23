%Funcion que calcula el perfil máximo profundidad del valle
function [Rv] = RvValues2(vectf)
Rv = vectf(1);
for ziV=2:length(vectf)
 if vectf(ziV) < Rv
    Rv = vectf(ziV);
 end
end
end