%Calcula el tiempo en caida libre
%en la Tierra, la Luna y en Marte
%La formula general es d=(1/2)*g*t^2
%para d=[6600] mts
%Se supone que no hay atm?sfera en L y en M,
%ni friccion del aire en la Tierra

%Gravedad de los planetas:
gT=9.81; %m/s^2
gL=1.62; %m/s^2
gM=3.721; %m/s^2

%Distancia a recorrer:
disT=6600; %m

%Calculo del tiempo en cada planeta
tT = round(sqrt(2*disT / gT));
tL = round(sqrt(2*disT / gL));
tM = round(sqrt(2*disT / gM));

%tabla comparativa
Tabla=[tT',tL',tM']

%De acuerdo con los resultados se llega más rápido en la Tierra
%(37 s), seguido de Marte (60 s) y luego en la Luna (90 s)