clear, clc
x=-5*pi:pi/100:5*pi;
%y=sin(x)./x;
y=sinc_c (x); % (nueva funcion)
plot (x, y)
axis ([-20 20 -0.4 1.2])
%Observar la discontinuidad alrededor de las graficas
