%Funcion que calcula el pico de perfil máximo altura
function [Rp] = RpValues(vectf)
Rp = vectf(1);
for zi=2:length(vectf)
 if vectf(zi) > Rp
    Rp = vectf(zi);
 end
end
figure
   x=1:length(vectf);
   y = vectf;
   idxmin = find(y == Rp);
   plot(x,y,'-p','MarkerIndices',[idxmin],...
    'MarkerFaceColor','red',...
    'MarkerSize',15)
   axis([0 140 0 256])
   grid on
end