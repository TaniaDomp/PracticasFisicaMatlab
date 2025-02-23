%Funcion que calcula la media de los valores 
function [z] = Zvalues2(vectf)
z = 0;
for zi=1:length(vectf)
 z=z+vectf(zi);
end
z = z/length(vectf);
end