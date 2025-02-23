function varargout = GUI_Proy(varargin)
% GUI_PROY MATLAB code for GUI_Proy.fig
%      GUI_PROY, by itself, creates a new GUI_PROY or raises the existing
%      singleton*.
%
%      H = GUI_PROY returns the handle to a new GUI_PROY or the handle to
%      the existing singleton*.
%
%      GUI_PROY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_PROY.M with the given input arguments.
%
%      GUI_PROY('Property','Value',...) creates a new GUI_PROY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_Proy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_Proy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_Proy

% Last Modified by GUIDE v2.5 18-Nov-2021 18:34:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_Proy_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_Proy_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI_Proy is made visible.
function GUI_Proy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_Proy (see VARARGIN)

% Choose default command line output for GUI_Proy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_Proy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_Proy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function co_Callback(hObject, eventdata, handles)
% hObject    handle to co (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of co as text
%        str2double(get(hObject,'String')) returns contents of co as a double


% --- Executes during object creation, after setting all properties.
function co_CreateFcn(hObject, eventdata, handles)
% hObject    handle to co (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fo_Callback(hObject, eventdata, handles)
% hObject    handle to fo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fo as text
%        str2double(get(hObject,'String')) returns contents of fo as a double


% --- Executes during object creation, after setting all properties.
function fo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cd_Callback(hObject, eventdata, handles)
% hObject    handle to cd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cd as text
%        str2double(get(hObject,'String')) returns contents of cd as a double


% --- Executes during object creation, after setting all properties.
function cd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fd_Callback(hObject, eventdata, handles)
% hObject    handle to fd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fd as text
%        str2double(get(hObject,'String')) returns contents of fd as a double


% --- Executes during object creation, after setting all properties.
function fd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in VerTra.
function VerTra_Callback(hObject, eventdata, handles)
global vectf;
set(handles.Zt, 'String', '');
set(handles.Rat, 'String', '');
set(handles.Rqt, 'String', '');
set(handles.Rvt, 'String', '');
set(handles.Rpt, 'String', '');
set(handles.Rtt, 'String', '');
set(handles.Rzt, 'String', '');
set(handles.Rskt, 'String', '');
%Inicio del codigo
AFM=imread('Imagen4AFMFinal.gif'); 
co = str2double(get(handles.co, 'String'));
fo = str2double(get(handles.fo, 'String'));
cd = str2double(get(handles.cd, 'String'));
fd = str2double(get(handles.fd, 'String'));

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
   resT = 'Trayectoria válida';
   hold(handles.axes1,'off')
   imshow(AFM, 'Parent', handles.axes1);
   hold(handles.axes1,'on')
   plot(handles.axes1, [co, cd],[fo, fd], 'r--o');
   hold(handles.axes2,'off')
   x=1:length(vectf);
   plot(handles.axes2, x,vectf)
   axis([0 140 0 256])
else
   ERR=imread('pag_err.jpg'); 
   resT = 'Trayectoria inválida';
   hold(handles.axes1,'off')
   imshow(ERR, 'Parent', handles.axes1);
   hold(handles.axes2,'off')
   imshow(ERR, 'Parent', handles.axes2);
   set(handles.Zt, 'String', 'Error');
   set(handles.Rat, 'String', 'Error');
   set(handles.Rqt, 'String', 'Error');
   set(handles.Rvt, 'String', 'Error');
   set(handles.Rpt, 'String', 'Error');
   set(handles.Rtt, 'String', 'Error');
   set(handles.Rzt, 'String', 'Error');
   set(handles.Rskt, 'String', 'Error');
end
set(handles.ResTra, 'String', resT);
% hObject    handle to VerTra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Z.
function Z_Callback(hObject, eventdata, handles)
global vectf;
z = Zvalues2(vectf);
set(handles.Zt, 'String', z);
hold(handles.axes2,'off')
x=1:length(vectf);
   plot(handles.axes2, x,vectf)
   axis([0 140 0 256])
   hold(handles.axes2,'on')
   n = [1:length(vectf)];
   for k=1:length(n)
    y(k) = z;
   end
plot (handles.axes2, n, y, 'r')
% hObject    handle to Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Ra.
function Ra_Callback(hObject, eventdata, handles)
global vectf;
Ra = RaValues(vectf);
set(handles.Rat, 'String', Ra);
hold(handles.axes2,'off')
x=1:length(vectf);
   plot(handles.axes2, x,vectf)
   axis([0 140 0 256])
% hObject    handle to Ra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Rq.
function Rq_Callback(hObject, eventdata, handles)
global vectf;
Rq = RqValues(vectf);
set(handles.Rqt, 'String', Rq);
hold(handles.axes2,'off')
x=1:length(vectf);
   plot(handles.axes2, x,vectf)
   axis([0 140 0 256])
% hObject    handle to Rq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Rv.
function Rv_Callback(hObject, eventdata, handles)
global vectf;
Rv = RvValues2(vectf);
set(handles.Rvt, 'String', Rv);
hold(handles.axes2,'off')
x=1:length(vectf);
   y = vectf;
   idxmax = find(y == Rv);
   plot(handles.axes2, x,y,'-p','MarkerIndices',[idxmax],...
    'MarkerFaceColor','red',...
    'MarkerSize',15)
   axis([0 140 0 256])
% hObject    handle to Rv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Rp.
function Rp_Callback(hObject, eventdata, handles)
global vectf;
Rp = RpValues2(vectf);
set(handles.Rpt, 'String', Rp);
hold(handles.axes2,'off')
x=1:length(vectf);
   y = vectf;
   idxmin = find(y == Rp);
   plot(handles.axes2,x,y,'-p','MarkerIndices',[idxmin],...
    'MarkerFaceColor','red',...
    'MarkerSize',15)
   axis([0 140 0 256])
% hObject    handle to Rp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Rt.
function Rt_Callback(hObject, eventdata, handles)
global vectf;
Rv = RvValues2(vectf);
Rp = RpValues2(vectf);
Rt = RtValues(vectf);
set(handles.Rtt, 'String', Rt);
hold(handles.axes2,'off')
x=1:length(vectf);
   plot(handles.axes2,x,vectf)
   axis([0 140 0 256])
   hold(handles.axes2,'on')
   n = [Rv:Rp];
   for k=1:length(n)
    y(k) = Rt;
   end
plot (handles.axes2, y, n, 'm')
% hObject    handle to Rt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Rz.
function Rz_Callback(hObject, eventdata, handles)
global vectf;
Rz = funcionRz(vectf);
set(handles.Rzt, 'String', Rz);
hold(handles.axes2,'off')
x=1:length(vectf);
   plot(handles.axes2, x,vectf)
   axis([0 140 0 256])

% hObject    handle to Rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Rsk.
function Rsk_Callback(hObject, eventdata, handles)
global vectf;
Rsk = RskValues(vectf);
set(handles.Rskt, 'String', Rsk);
hold(handles.axes2,'off')
x=1:length(vectf);
   plot(handles.axes2, x,vectf)
   axis([0 140 0 256])
% hObject    handle to Rsk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Todos.
function Todos_Callback(hObject, eventdata, handles)
global vectf;
%z 
z = Zvalues2(vectf);
%Ra
Ra = RaValues(vectf);
%Rq
Rq = RqValues(vectf);
%Rv
Rv = RvValues2(vectf);
%Rp
Rp = RpValues2(vectf);
%Rt
Rt = RtValues(vectf);
%Rz
Rz = funcionRz(vectf);
%Rsk
Rsk = RskValues(vectf);
%Grafica
hold(handles.axes2,'off')
x=1:length(vectf);
   plot(handles.axes2, x,vectf)
   axis([0 140 0 256])
   hold(handles.axes2,'on')
   n = [1:length(vectf)];
   for k=1:length(n)
    y(k) = z;
   end
plot (handles.axes2, n, y, 'r')
 hold(handles.axes2,'on')
 x=1:length(vectf);
   y = vectf;
   idxmax = find(y == Rv);
   plot(handles.axes2, x,y,'-p','MarkerIndices',[idxmax],...
    'MarkerFaceColor','red',...
    'MarkerSize',15)
   hold(handles.axes2,'on')
   x=1:length(vectf);
   y = vectf;
   idxmin = find(y == Rp);
   plot(handles.axes2,x,y,'-p','MarkerIndices',[idxmin],...
    'MarkerFaceColor','red',...
    'MarkerSize',15)

set(handles.Zt, 'String', z);
set(handles.Rat, 'String', Ra);
set(handles.Rqt, 'String', Rq);
set(handles.Rvt, 'String', Rv);
set(handles.Rpt, 'String', Rp);
set(handles.Rtt, 'String', Rt);
set(handles.Rzt, 'String', Rz);
set(handles.Rskt, 'String', Rsk);
% hObject    handle to Todos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
