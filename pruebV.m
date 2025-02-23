%Prueba automatica para el ejercicio semi-manual
x=0:15; 
y =[170, 171, 170, 168, 167, 166, 165, 165, 165, 165, 166, 166, 166, 165, 165, 164];
y1 =[150, 152, 151, 148, 147, 146, 145, 145, 145, 146, 147, 148, 150, 152, 153, 155];
p=polyfit(x,y,3); %sin el punto y coma salen los coeficientes 
p1=polyfit(x,y1,3); %sin el punto y coma salen los coeficientes 
%Para graficar la ecuacion se usa:
xplot=0:19; 
yplot=polyval(p,xplot, 'r'); 
plot(xplot,yplot)
hold on
y1plot=polyval(p1,xplot, 'b'); 
plot(xplot,y1plot)
fprintf('El valor proyectado al mes 20 para la empresa A: %4.2f \n', yplot(18))
fprintf('El valor proyectado al mes 20 para la empresa B: %4.2f \n', y1plot(18))
%yplot(x) indica que valor de la funcion queremos graficar