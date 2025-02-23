%Este es un ejemplo de interpolacion
%a traves de una "gui" (graphical user interface)
%tiene cuatro variantes: linear,lagrange,cubic y piecewise.
%requiere de las siguientes funciones: Lpoly,splinetx,pchiptx,
%piecelin,tridisolve y interpgui.

x=1:12;
y=rand(1,12);
interpgui(x,y)