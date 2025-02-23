%Funcion que calcula la media de los valores y grafica la media
function [z] = Zvalues(vectf)
z = 0;
for zi=1:length(vectf);
 z=z+vectf(zi);
end
z = z/length(vectf);
figure
   x=1:length(vectf);
   plot(x,vectf)
   axis([0 140 0 256])
   grid on
   hold on
   n = [1:length(vectf)];
   for k=1:length(n)
    y(k) = z;
   end
plot (n, y, 'r')
end