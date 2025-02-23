%Prueba automatica para el ejercicio semi-manual
x=0:23; 
y = [125 200 300 400 500 625 800 890 910 900 890 880 900 920 990 1030 1040 1025 1015 1000 980 970 955 940];
p=polyfit(x,y,4); %sin el punto y coma salen los coeficientes 
%Para graficar la ecuacion se usa:
xplot=0:29; 
yplot=polyval(p,xplot); 
plot(xplot,yplot)
fprintf('El valor proyectado al mes 30 es: %4.2f \n', yplot(30))
%yplot(x) indica que valor de la funcion queremos graficar