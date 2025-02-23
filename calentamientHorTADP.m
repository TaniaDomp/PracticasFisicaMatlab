%El tiempo de calentamiento de un horno industrial se rige por la 
%siguiente fórmula empírica:  para t =1:0.1:6  minutos, el rango de 
%temperatura expresado en grados centígrados es  TC=10+550*log(t)   
%Sabiendo que la fórmula de conversión de grados centígrados a grados 
%F es : F=((9/5)*C)+32 y siendo esta fórmula propiamente un escalar, 
%puede ser aplicada directamente a la conversión de un vector de 
%grados Centígrados a otro vector de grados Farenheit
t=[1:0.1:6]; %tiempo en minutos
TC=10+550*log(t);
F=((9/5)*TC)+32; 
plot(t,F)
grid on
title('Calentamiento de un horno');
xlabel('Tiempo en minutos');
ylabel('Aumento de la temperatura en Farenheit');