%Este es un programa de entrenamiento sobre matrices
%Tiene ejercicios y comentarios.
%Las matrices mas sencillas son "arrays" bidimensionales.
%Creacion de una matriz:
Ma=[5 35 43; 4 76 81; 21 32 40]; %matriz(3 x 3)
Mb=[1 2 3 4; 5 6 7 8; 9 10 11 12]; %matriz(3 x 4) m:filas n:cols
%Matriz de numeros aleatorios:
%C=rand(n) matriz n x n entre 0 y 1
Mc=rand(4);
%D=rand(m,n) matriz m x n entre 0 y 1 m:filas n:cols
Md=rand(2,4);
%Matriz de ceros F=zeros(m,n)
Mf=zeros(3,2);
%Matriz de unos G=ones(m,n)
Mg=ones(4,3);
%Matriz identidad H=eye(n) (Cuadrada)
Mh=eye(4);
%Partes de matrices
% Mj=Ma(:,n) todos los elementos de la columna n de la matriz Ma
Mj=Ma(:,2);
% Mk=Ma(m,:) todos los elementos de la fila m de la matriz Ma
Mk=Ma(3,:);
%Tamaño de cualquier matriz: size(M)
size(Md);
%Transposicion de matrices mt=m'
Mat=Ma';
%Inversa de una matriz Mai=inv(Ma)
%Si Mai es la inversa de Ma: Ma*Mai=Mai*Ma=I identidad
Mai=inv(Ma);
round(Ma*Mai); %Comprueba que la matriz es inversa porque sale la matriz unitaria
%Atencion: Ma*Ma^-1=I
round(Ma*Ma^-1);