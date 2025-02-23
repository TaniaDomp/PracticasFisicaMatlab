function [Atn,k] = expGD32(A0,Atr,r,n)
% Esta funcion calcula el crecimiento o decrecimeinto exponencial.
% Calcula primero k a partir de un valor Atr de referencia
% medido en el periodo r y A0 valor para r=0.
% Calcula entonces el valor Atn para n periodos n>=r
% Los periodos pueden ser anos,dias o segundos (tiempo)
% n puede ser un valor o un vector para graficar.
k=log(Atr/A0)/r;%Dice el porcentaje que aumenta por periodo
Atn=A0*exp(k.*n);%Dice el valor final de un periodo n
end

