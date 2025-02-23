%Demuestra la diferencia de trato en Matlab
%entre un vector y un numero aislado para (.^)
t=[1:5]  %genera un vector de 5 elementos
%y se aplican las reglas de matrices.
size(t)  %la respuesta es ans=(1,5) un renglon con 5 cols
%A=t^2

    %da error porque  (1,5)
    %y  (1,5) en la diagonal
    %5 no es igual a 1

B = t.^2     %ok da un nuevo vector [1^2 2^2 3^2 4^2 5^2]
%Pero si generamos numeros por medio de un loop
%y a cada uno de esos numeros le aplicamos ^2 
%Matlab lo reconoce como un escalar 
%(no como un vector) y simplemente calcula
%el cuadrado de ese numero. Por ejemplo,
for t=1:5  %va a ejecutar el loop cinco veces y en cada
            %ciclole va a dar a t el valor de 1 a 5
k1=t^2;    %No da error
fprintf('El valor de t es: %i y k1 es: %i',t,k1)
fprintf('\n')
end