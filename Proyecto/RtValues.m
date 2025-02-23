%Funcion que calcula Altura máxima de el perfil es la diferencia entre pico y Valle
function [Rt] = RtValues(vectf)
Rp = RpValues2(vectf);
Rv = RvValues2(vectf);
Rt = Rp - Rv;
end