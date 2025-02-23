function [Rz] = funcionRz(x)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%calculo promedio
s=0;
for i=1:length(x)
    s=s+x(i);
end
res=s/length(x);
cont=1;
%para saltarme el primer intervalo
if(x(1)>res)
    while(x(cont)>res)
        cont=cont+1;
    end
else
    while(x(cont)<res)
        cont=cont+1;
    end
end

p=[];%vector de peaks
v=[];%vector de valley

n=cont;
r=1;
m=1;
%if(x(1)>res)
    while(n<length(x))
        if(x(n)>=res)
        aux=[];%vector auxiliar se inicializa
        i=1;
        while(x(n)>=res && n<length(x))
            aux(i)=x(n);
            n=n+1;
            i=i+1;
        end
        p(r)=calculaMax(aux);
        r=r+1;
        end
        if(x(n)<=res)
        aux=[];
        j=1;
        while(x(n)<=res && n<length(x))
            aux(j)=x(n);
            n=n+1;
            j=j+1;
        end
        v(m)=calculaMin(aux);
        m=m+1;
        end
    end
%end
p;
v;
sumP=0;
sumV=0;
%para quitar ultimo intervalo
if(x(length(x))>res)
    
    for b=1:(length(p)-1)
        sumP=sumP+p(b);
    end
    for b=1:length(v)
        sumV=sumV+v(b);
    end
    %Rz=(sumP+sumV)/(length(v)+length(p)-1);
else
    for b=1:length(p)
        sumP=sumP+p(b);
    end
    for b=1:(length(v)-1)
        sumV=sumV+v(b);
    end
    
end
Rz=(sumP+sumV)/(length(v)-1+length(p));

sumP;
sumV;
length(v);
length(p);

end

