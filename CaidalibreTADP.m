%Calcula la distancia en caida libre
%en la Tierra, la Luna y en Marte
%La formula general es d=(1/2)*g*t^2
%para t=[0:10:100] segs
%Se supone que no hay atm?sfera en L y en M,
%ni friccion del aire en la Tierra
gT=9.81; %m/s^2
gL=1.62; %m/s^2
gM=3.721; %m/s^2
%el valor de la gravedad depende de la masa
%del planeta
t=[0:10:100]; %100 segs (vector)
dT=round((1/2)*gT*t.^2);
dL=round((1/2)*gL*t.^2);
dM=round((1/2)*gM*t.^2);
%tabla comparativa
Tabla=[t',dT',dL',dM']
