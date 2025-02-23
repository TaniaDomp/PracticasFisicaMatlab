%Examen 1, Prgunta 2 - Marijó
%CORRECCIÓN
%Convergencia entre log(2) y 
%q = summatoria
%Encuentra el valor mínimo de n para que
%q tenga error menor que 0.0045 con respecto 
%a log(2). Imprime q y grafica la convergencia (n,q)

L=log(2); %tendencia
n=0;
q=0; %vals iniciales
an=L-q; %max desviación
val(n+1)=q;
while abs(an)>=0.0045
     q=q+(1/((2*n+1)*(2*n+2)));
     an=L-q;
     val(n+1)=q;
     n=n+1;
end
dif=abs(q-log(2))
fprintf('El valor de n debe de ser %i para que q sea %1.4f\n', n,q)
fprintf('De este modo, la diferencia entre q y log(2) es de %1.4f\n',dif)

%Gráfica
 plot(56,0.0045,'*')%log(2)
 text(56,0.0045,'log(2)')%log(2)
hold on
y = 0;
for n=0:7:56
    x=n+1;
    y=y+(1/((2*n+1)*(2*n+2)));
    an=log(2)-y;
    val(n+1)=y;
    axis([0,80,0,0.01])
    plot(x,y,'r')
end

xlabel('Valores de n')
ylabel('valores de q')
title('Convergencia')
hold off
