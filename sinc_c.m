function [output] = sinc_c(x)
%Esta funcion quita la discontinuidad de sin(x)/x V.Matlab2020a
% En principio para x-0, sin(x)/x es igual a l
% Se considera un error err de +0.0001 alrededor de x-0

err=0.0001;
setl=find (abs (x) <err); %identifica todos los valores de x menores a er output (set 1)-1; para esos valores de x la salida es igual a 1
set2=find (abs(x) >=err); %identifica todos los valores de x mayores a e
output (set2)=sin(x (set2))./x (set2); %para esos valores de x ejecuta sin(x)/x 
end