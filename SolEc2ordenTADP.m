%Este programa permite resolver ecuaciones de segundo orden.
%Las ecuaciones son de tipo ax^2+bx+c=0
%La solucion es x=(-b+/-(b^2-4ac)^0.5)/2a
% D=(b^2-4ac) ahora si D>0 la ecuacion tiene dos raices
%Si D=0 la ecuacion tiene una sola raiz x=-b/2a
%Si D<0 la ecuacion no tiene raices reales.
clear %borra el command window
clc %borra workspace
a=input('Introduzca el valor de a:');
b=input('Introduzca el valor de b:');
c=input('Introduzca el valor de c:');
D=b^2-4*a*c;
if D==0
 fprintf('La ecuacion tiene una sola raiz \n')
 x=-b/(2*a);
 fprintf('El valor de x es: %2.6f \n',x)
else
 if D>0
 fprintf('La ecuacion tiene dos raices \n')
 x1=(-b+sqrt(D))/(2*a);
 x2=(-b-sqrt(D))/(2*a);
 fprintf('El valor de x1 es: %2.6f \n',x1)
 fprintf('El valor de x2 es: %2.6f \n',x2)
 else
 fprintf('La ecuacion no tiene raices reales \n')
 end
end