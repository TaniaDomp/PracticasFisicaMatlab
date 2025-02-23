function [min] = calculaMin(x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
min=x(1);
for k=2:length(x)
    if(x(k)<min)
        min=x(k);
    end
end

end

