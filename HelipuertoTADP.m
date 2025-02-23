%Calcula area para helipuerto
%El area de un helipuerto debe ser
%al menos 6.2 veces el circulo generado
%por las aspas del rotor principal.
%Las aspas son de 5.7 mt de largo.
%Calcular el area minima y si el terreno
%es rectangular cuadrado cuanto debiera tener por lado?

la=5.7; %largo de las aspas
Aga=pi*la^2; %area de giro de las aspas
AminH=6.2*Aga; %area minima del helipuerto
Lterr=sqrt(AminH); %Lado del terreno
%disp('El area minima del helipuerto en mt2 debe ser:')
%disp(AminH)
%disp('Cada lado del terreno cuadrado debe medir en mt:')
%disp(Lterr)

fprintf('El area minima debe ser de %3.4f mt2.\n',AminH)
fprintf('Cada lado del terreno cuadrado debe medir %2.4f mt.\n',Lterr)