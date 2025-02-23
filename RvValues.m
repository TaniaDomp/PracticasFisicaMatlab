%Funcion que calcula el perfil máximo profundidad del valle
function [Rv] = RvValues(vectf)
Rv = vectf(1);
for ziV=2:length(vectf)
 if vectf(ziV) < Rv
    Rv = vectf(ziV);
 end
end
figure
   x=1:length(vectf);
   y = vectf;
   idxmax = find(y == Rv);
   plot(x,y,'-p','MarkerIndices',[idxmax],...
    'MarkerFaceColor','red',...
    'MarkerSize',15)
   axis([0 140 0 256])
   grid on
end