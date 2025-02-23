%Grafica la serie que converge al log 2
clc;clear
n=40;
q=0;
for k=0:n
q = q + (1/((2*k+1)*(2*k+2))); 
end
fprintf('La suma de los primeros %i terminos es: %2.4f',n,q)
fprintf('\n')
for k=1:n
 q1(k)=(1/((2*k+1)*(2*k+2))); 
 k1(k)=k;
end
plot(k1,q1,'b') 
grid on
hold on
k2(1)=1;
q2(1)=(1/((2*k+1)*(2*k+2)));
for k=1:n 
 q2(k)=q2(1)+(1/((2*k+1)*(2*k+2))); 
 k2(k)=k;
end
plot(k2,q2,'r')
xlabel('k')