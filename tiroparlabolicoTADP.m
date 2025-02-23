%calcular el ángulo theta en grados para un tiro parabólico que 
%alcance la distancia máxima dmax=5800 mts con una velocidad inicial 
%v0=250 mt/seg. Calcular la altura máxima hmax de la parábola en mts 
%y graficar la trayectoria.

v0 = 250;
dmax = 5800;
theta = angtiro(dmax, v0)
tray = trayectoria(v0, theta)