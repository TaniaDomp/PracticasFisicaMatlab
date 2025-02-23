%Funcion que calcula el perfil medio es el promedio encontrado de los picos más grandes de P 
% y V valles más grandes
function [Rz] = RzValues(vectf)
z = Zvalues2(vectf);
P = 0;
V = 0;
Pt = 0;
Vt = 0;
for zi=1:length(vectf)
 if vectf(zi) < z
     V = V + 1;
     Vt = Vt + vectf(zi);
 elseif vectf(zi) > z
     P = P + 1;
     Pt = Pt + vectf(zi);
 end
 end
 s = Pt + Vt;
 Rz = s / (V + P);
end