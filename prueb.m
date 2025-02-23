%Programa demo for-end
%Calcula la suma de los n primeros terminos de
%una serie sigma desde k=1 hasta n de (k*(-1)^k)/(2^k)
clc;clear
n=input('numero maximo de terminos:');
q=0;
for k=1:n
 q = q + (1/((2*k+1)*(2*k+2)));
end
fprintf('La suma de los primeros %i terminos es %1.4f',n,q)
fprintf('\n')