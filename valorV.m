%Valor de v
clc;clear
n=12;
v=0;
for k=1:n
v = v + (atan(1/(fibcc((2*k)+1))));
end
v = 4 * v;
fprintf('El resultado de los terminos: %2.4f',v)
fprintf('\n')