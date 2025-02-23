%Este es un programa de entrenamiento sobre vectores
%Tiene ejercicios y comentarios.
%Suponiendo las ventas de una empresa:
%Anos 2014 2015 2016 2017 2018 2019
%Ventas 500 525 551 579 608 638
%Vector fila:
yr=[2014 2015 2016 2017 2018 2019];
%Vector columna:
ventas=[500;525;551;579;608;638];
%Vectores Traspuestos:
yrt=yr';
ventast=ventas';
%Elementos de un vector:
A=yr(3);
B=ventas(4);
%Creacion de vectores X=[1:2:13]
% 1: primer elemento 2: "distancia" si no esta es 1 (default)
%13 ultimo elemento
x=[1:2:13];
x=[-3:7];
x=[21:-3:6];
%Vector con "distancia" constante.
%linspace(0,8,6) 0 primer elemento 8 ultimo 6 numero de elementos
va=linspace(0,8,6);
vb=linspace(30,10,11);
%toma el 10 le resta el 30 =-20 y lo divide entre 11-1=10 dist=-2
%Util para intervalos de tiempo
%Ejemplo, se requieren 21 puntos entre 100 y 180
vc=linspace(100,180,21);
%Otro, se requieren 16 puntos equidistantes entre 20 y 50
vd=linspace(20,50,16); %(50-20)/(16-1)=2
%Tramos de un vector (entre tal y tal elemento)
u=vd(6:11);
%Numero de elementos de un vector
L=length(vd);
%Vector de numeros aleatorios a=rand(1,n)
%crea un vector fila de (n) numeros aleatorios entre 0 y 1
VA=rand(1,10);
%Si queremos que se distribuyan en un intervalo entre (a,b)
%se emplea la formula (b-a)*rand(1,n)+a
%Ejemplo: Un vector de 10 numeros entre -5 y 10
a=-5;
b=10;
VAI=(b-a)*rand(1,10)+a;
VE=round(VAI); %redondea los valores
VAI=round((b-a)*rand(1,10)+a); %lo mismo que la anterior pero sin una instruccion