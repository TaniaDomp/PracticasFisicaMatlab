%Solucion a sistemas de ecuaciones lineales
% a11 a12 a13 x1 b1
% a21 a22 a23 * x2 = b2
% a31 a32 a33 x3 b3
% Matricialmente equivale a A*X=B X y B son vectores columna
% En Matlab X=A\B "\" se llama "division izquierda"
% Deduccion A*X=B (A^-1)*A*X=(A^-1)*B X=(A^-1)*B X=A\B
%Ejemplo
% 3*x1+2*x3=9 Ec1
% x2+4*x3=12 Ec2
% x1+x2+x3=4 Ec3
A=[ 3 0 2; 0 1 4; 1 1 1]; %matriz de coeficientes
B=[9; 12; 4]; %vector columna
X=A\B;
%Por lo tanto:
x1=X(1);
x2=X(2);
x3=X(3);
%Verificando:
Ec1=3*x1+2*x3; %debe dar =9
Ec2=x2+4*x3; %debe dar =12
Ec3=x1+x2+x3; %debe dar =4
%Otro ejemplo
% 4x- 2y+6z=8 Ecc1
% 2x+ 8y+2z=4 Ecc2
% 6x+10y+3z=0 Ecc3
A=[4 -2 6; 2 8 2; 6 10 3];
B=[8;4;0];
X=A\B;
x=X(1);
y=X(2);
z=X(3);
%Verificando
Ecc1=4*x-2*y+6*z; %debe dar =8
Ecc2=2*x+8*y+2*z; %debe dar =4
Ecc3=6*x+10*y+3*z; %debe dar =0