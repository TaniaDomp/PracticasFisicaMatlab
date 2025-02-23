%Programa que calcula el volumen de ventas de dos empresas
empA=[120, 171, 170, 168, 167, 166, 165, 165, 165, 165, 166, 166, 166, 165, 165, 164];
empB=[150, 152, 151, 148, 147, 146, 145, 145, 145, 146, 147, 148, 150, 152, 153, 155];
x=[0:length(empA)-1]; %vector fila
plot(x,empA,'b') %grafica original
hold on
p=polyfit(x',empA,3); %la variable
 %preciomes es un vector columna
y=polyval(p,x);
plot(x,y,'--k') %ajuste de 3er orden
x1=[0:length(empB)-1]; %vector fila
plot(x1,empB,'b') %grafica original
p1=polyfit(x1',empB,3); %la variable
 %preciomes es un vector columna
y1=polyval(p1,x1);
plot(x1,y1,'--k') %ajuste de 3er orden
%Proyeccion
%La proyeccion sera de 4 meses
xplot=[0:(length(empA)-1)+4];
yplot=polyval(p,xplot);
figure %grafica de proyeccion
plot(xplot,yplot,'g')
grid on
hold on
plot(x,empA,'y')
%Ventas de la empresa del ultimo mes proyectado (mes 20)
preciofinal=yplot(length(yplot))
hold on
x1plot=[0:(length(empB)-1)+4];
y1plot=polyval(p1,x1plot);
plot(x1plot,y1plot,'r')
grid on
hold on
plot(x1,empB,'b')
%Precio del ultimo mes proyectado (mes 25)
preciofinal1=y1plot(length(y1plot))