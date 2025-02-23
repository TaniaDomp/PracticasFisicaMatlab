%Prueba automatica para el ejercicio semi-manual
x=0:14; 
y = [30.2, 31.2, 31.9, 32.4, 32.6, 32.7, 32.6, 32.3, 31.9, 31.4, 30.8, 30.0, 29.2, 28.4, 27.4];
p=polyfit(x,y,3); %sin el punto y coma salen los coeficientes 
p4=polyfit(x,y,4); %sin el punto y coma salen los coeficientes 
p5=polyfit(x,y,5); %sin el punto y coma salen los coeficientes 
%Para graficar la ecuacion se usa:
xplot=0:23; 
yplot=polyval(p,xplot, 'r'); 
plot(xplot,yplot)
hold on
y4plot=polyval(p4,xplot, 'b'); 
plot(xplot,y4plot)
hold on
y5plot=polyval(p5,xplot, 'y'); 
plot(xplot,y5plot)
fprintf('El valor proyectado al mes 24 para la cubica: %4.2f \n', yplot(24))
fprintf('El valor proyectado al mes 24 para la cuarta: %4.2f \n', y4plot(24))
fprintf('El valor proyectado al mes 24 para la quinta: %4.2f \n', y5plot(24))
%yplot(x) indica que valor de la funcion queremos graficar