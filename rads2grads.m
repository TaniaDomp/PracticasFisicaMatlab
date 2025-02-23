function [grads] = rads2grads(rads)
%Esta funcion traduce radianes a grados
%De 0 a 2*pi grados

grads=(rads*180)/pi;
%fprintf('%3.2f grados son %2.4f radianes \n',grads,rads)
end

