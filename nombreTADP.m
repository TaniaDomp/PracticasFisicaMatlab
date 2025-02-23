%Programa para guardar nombres
%a partir de sus letras en hexadecimal
clc
clear
c=input('Cuantas letras tiene su nombre?(no >10): ');
if c<=10
 for i=1:c
 x=input('Ingrese el codigo hexa de una letra (de 41 a 5A): ','s');
 xd=hex2dec(x);
 fprintf('Codigo o valor en decimal: %i',xd)
 fprintf('\n')
 d(i)=hex2dec(x)+32; %d(i)=hex2dec(x)+32 para minusculas
 end
 nombre=char(d);
 fprintf('nombre:%s',nombre)
 fprintf('\n')
else
 disp('debe ser menor de 10 caracteres')
 disp('volver a iniciar el programa')
end
%Los codigos ASCII de las letras mayusculas van de:
%letra A 41 hex = 65 dec hasta letra Z 5A hex = 90 dec
%Las letras minusculas van de:
%letra a 61 hex = 97 dec hasta letra z 7A hex = 122 dec
%O sea una diferencia de 97-65 = 122-90 = 32 decimal