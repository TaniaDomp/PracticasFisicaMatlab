%Funcion que calcula el pico de perfil máximo altura
function [Rp] = RpValues2(vectf)
Rp = vectf(1);
for zi=2:length(vectf)
 if vectf(zi) > Rp
    Rp = vectf(zi);
 end
end
end