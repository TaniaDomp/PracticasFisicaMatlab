%Programa de simulacion de varios pulsos
%utilizando circuitos de carga-descarga RC
%Usa las funciones switch-case
%(ver programa Capacitor1 como referencia)
R=100;
C=47;
v0=8;
estado='carga';
 for n=1:8 %4 ciclos completos (4*2)
 if rem(n,2)==0 %numeros pares de n
 estado='descarga';
 else %numeros impares de n
 estado='carga';
 end

 switch estado
 case 'carga'
 t1=0:20;
 vc=v0*(1-exp(-(t1/R*C)));
 plot(t1+(n-1)*20,vc,'b')
 axis([0 160 0 14])
 hold on
 case 'descarga'
 t2=0:20;
 vc2=v0*exp(-(t2/R*C));
 plot(t2+(n-1)*20,vc2,'r')
 axis([0 160 0 14])
 hold on
 end
 end
 hold off