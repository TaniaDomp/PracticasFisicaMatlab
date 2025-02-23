%Funcion que calcula Altura máxima de el perfil es la diferencia entre pico y Valle
function [Rt] = RtValues(vectf)
Rp = RpValues2(vectf);
Rv = RvValues2(vectf);
Rt = Rp - Rv;
figure
   x=1:length(vectf);
   plot(x,vectf)
   axis([0 140 0 256])
   grid on
   hold on
   n = [Rv:Rp];
   for k=1:length(n)
    y(k) = Rt;
   end
plot (y, n, 'm')
end