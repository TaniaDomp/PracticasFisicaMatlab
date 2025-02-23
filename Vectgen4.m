%Programa para crear trayectorias en un AFM data set
%Se puede cambiar el punto de origen de la linea de prueba:
%co columna origen,fo fila de origen (x1,y1)
%y el punto de destino de la linea de prueba:
%cd columna destino,fd fila de destino (x2,y2)
%Si fd=fo es un vector horizontal,
%si cd=co es un vector vertical. 
%Si es diagonal abs(fd-fo) debe ser igual a abs(cd-co) 
%de otra manera da "trayectoria invalida".
%Grafica los valores de la trayectoria.
%Emplea: Imagen4AFMFinal.gif
%Solo admite max 138 por 138 puntos (pixeles) 

AFM=imread('Imagen4AFMFinal.gif'); 
co=1; %x1
%co = input('Ingrese la coordenada x1: ');
fo=100; %y1
%fo = input('Ingrese la coordenada y1: ');
cd=100; %x2
%cd = input('Ingrese la coordenada x2: ');
fd=1; %y2
%fd = input('Ingrese la coordenada y2: ');
if  (fd-fo)==0 || abs(fd-fo)==abs(cd-co) || (cd-co)==0
    for n=1:138  %asegura que el vector vect tenga zeros
        vect(n)=0;
    end
    if (fd-fo)==0 %trayectoria horizontal
        incf=0;
    elseif (fd-fo)>0
        incf=1;   % diagonal hacia abajo 
    else
        incf=-1;  %diagonal hacia arriba
    end
    if (cd-co)==0  %trayectoria vertical
        incc=0;
    elseif (cd-co)>0
        incc=1;   %diagonal hacia la derecha
    else
        incc=-1;  %diagonal hacia la izquierda
    end
    if incf==0   %recorrido horizontal
         m=(abs(cd-co))+1;
         f=fo;
         c=co;
         vect(1)=AFM(fo,co); %primer valor en la trayectoria 
        for n=2:m
         f=f+incf;
         c=c+incc;
         vect(n)=AFM(f,c);
        end
        vectf=vect(1:m); %los m valores en la trayectoria
   elseif incc==0  %recorrido vertical
         m=(abs(fd-fo))+1;
         f=fo;
         c=co;
         vect(1)=AFM(fo,co); %primer valor en la trayectoria
         for n=2:m
          f=f+incf;
          c=c+incc;
          vect(n)=AFM(f,c);
         end
         vectf=vect(1:m); %los m valores de la trayectoria
   else
        %recorrido diagonal
        deltaf=abs(fd-fo);
        deltac=abs(cd-co);
       if (deltaf-deltac)==0
          m=deltaf+1;
          f=fo;
          c=co;
          vect(1)=AFM(fo,co); %primer valor en la trayectoria
          for n=2:m
            f=f+incf;
            c=c+incc;
            vect(n)=AFM(f,c);
          end
          vectf=vect(1:m); %los m valores de la trayectoria
       end
    end
   imshow(AFM)
   hold on
   plot([co, cd],[fo, fd], 'b--o')
   figure
   x=1:length(vectf);
   plot(x,vectf)
   axis([0 140 0 256])
   grid on
else
   disp('Trayectoria Invalida')
end

%Inicio de formulas
%Primera formula (Z)
z = Zvalues(vectf);
fprintf('\nEl valor de Z %2.4f',z)

%Segunda formula Ra
Ra = RaValues(vectf);
fprintf('\nEl valor de Ra %2.4f',Ra)

%Tercera formula Rq
Rq = RqValues(vectf);
fprintf('\nEl valor de Rq %2.4f',Rq)

%Cuarta formula Rp, Rv
Rp = RpValues(vectf);
Rv = RvValues(vectf);
fprintf('\nEl pico Rp %2.4f',Rp)
fprintf('\nEl valle Rv %2.4f',Rv)

%Quinta formula Rt
Rt = RtValues(vectf);

%Sexta formula Rz
P = 0;
V = 0;
Pt = 0;
Vt = 0;
for zi=1:length(vectf)
 if vectf(zi) < z
     V = V + 1;
     Vt = Vt + vectf(zi);
 elseif vectf(zi) > z
     P = P + 1;
     Pt = Pt + vectf(zi);
 end
 end
 s = Pt + Vt;
 Rz = s / (V + P);
 fprintf('\nValor de Rz %2.4f',Rz)

 %Septima formula Rsk
Rsk = RskValues(vectf);
fprintf('\nEl valor de Rsk %2.4f',Rsk)
fprintf('\n')