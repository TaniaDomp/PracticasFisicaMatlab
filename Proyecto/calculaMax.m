function [max] = calculaMax(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
max=x(1);
for k=2:length(x)
    if(x(k)>max)
        max=x(k);
    end
end
end

