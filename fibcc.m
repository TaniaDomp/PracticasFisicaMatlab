function [F] = fibcc(n)
Ff=[];
Ff(1)=1;
Ff(2)=1;
for i = 3:n
    Ff(i)=Ff(i-1)+Ff(i-2);
end
F = Ff(n);
end