%Calcula la masa en kg de un tanque cilindrico
radio = 0.3; %30 cm
altura = 1.5; %1.5 mt
rho = 1000; %densidad del agua. kg/mt^3

volumen =pi*radio^2*altura;
masa=rho*volumen;

disp('Masa del tanque en kg')
disp(masa)
%disp('Volumen del cilindro')
%disp(volumen)

%fprintf('Masa = %3.4f kg.\n', masa)
fprintf('Masa = %3.4f kg y volumen = %3.4f m^3\n', masa, volumen)