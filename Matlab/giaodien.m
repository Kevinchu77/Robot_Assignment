function varargout = giaodien(varargin)
% GIAODIEN MATLAB code for giaodien.fig
%      GIAODIEN, by itself, creates a new GIAODIEN or raises the existing
%      singleton*.
%
%      H = GIAODIEN returns the handle to a new GIAODIEN or the handle to
%      the existing singleton*.
%
%      GIAODIEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GIAODIEN.M with the given input arguments.
%
%      GIAODIEN('Property','Value',...) creates a new GIAODIEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before giaodien_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to giaodien_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help giaodien

% Last Modified by GUIDE v2.5 25-Jun-2022 16:10:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @giaodien_OpeningFcn, ...
                   'gui_OutputFcn',  @giaodien_OutputFcn, ...
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


% --- Executes just before giaodien is made visible.
function giaodien_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to giaodien (see VARARGIN)

% Choose default command line output for giaodien
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes giaodien wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = giaodien_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val1=get(hObject,'value');
set(handles.theta1,'String',num2str(val1));
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val2=get(hObject,'value');
set(handles.theta2,'String',num2str(val2));
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val3=get(hObject,'value');
set(handles.theta3,'String',num2str(val3));
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function theta1_Callback(hObject, eventdata, handles)
% hObject    handle to theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta1 as text
%        str2double(get(hObject,'String')) returns contents of theta1 as a double
edit1=get(hObject,'String');
set(handles.slider1,'value',str2num(edit1));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function theta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta2_Callback(hObject, eventdata, handles)
% hObject    handle to theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta2 as text
%        str2double(get(hObject,'String')) returns contents of theta2 as a double
edit2=get(hObject,'String');
set(handles.slider2,'value',str2num(edit2));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function theta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta3_Callback(hObject, eventdata, handles)
% hObject    handle to theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta3 as text
%        str2double(get(hObject,'String')) returns contents of theta3 as a double
edit3=get(hObject,'String');
set(handles.slider3,'value',str2num(edit3));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function theta3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function X_Callback(hObject, eventdata, handles)
% hObject    handle to X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X as text
%        str2double(get(hObject,'String')) returns contents of X as a double


% --- Executes during object creation, after setting all properties.
function X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y_Callback(hObject, eventdata, handles)
% hObject    handle to Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y as text
%        str2double(get(hObject,'String')) returns contents of Y as a double


% --- Executes during object creation, after setting all properties.
function Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Z_Callback(hObject, eventdata, handles)
% hObject    handle to Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Z as text
%        str2double(get(hObject,'String')) returns contents of Z as a double


% --- Executes during object creation, after setting all properties.
function Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ROLL_Callback(hObject, eventdata, handles)
% hObject    handle to ROLL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ROLL as text
%        str2double(get(hObject,'String')) returns contents of ROLL as a double


% --- Executes during object creation, after setting all properties.
function ROLL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ROLL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PITCH_Callback(hObject, eventdata, handles)
% hObject    handle to PITCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PITCH as text
%        str2double(get(hObject,'String')) returns contents of PITCH as a double


% --- Executes during object creation, after setting all properties.
function PITCH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PITCH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function YAW_Callback(hObject, eventdata, handles)
% hObject    handle to YAW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YAW as text
%        str2double(get(hObject,'String')) returns contents of YAW as a double


% --- Executes during object creation, after setting all properties.
function YAW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YAW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in FORWARD.
function FORWARD_Callback(hObject, eventdata, handles)
ModelName= 'ASSEMBLY_3_JOINTS';
% hObject    handle to Forward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global theta_1;
global theta_2;
global theta_3;
global theta_1_tmp;
global theta_2_tmp;
global theta_3_tmp;



val1 = get(handles.slider1,'value')
set(handles.theta1,'string',num2str(val1));
val2 = get(handles.slider2,'value')
set(handles.theta2,'string',num2str(val2));
val3 = get(handles.slider3,'value')
set(handles.theta3,'string',num2str(val3));

theta_1=str2double(handles.theta1.String)*pi/180
theta_2=str2double(handles.theta2.String)*pi/180
theta_3=str2double(handles.theta3.String)*pi/180


Forward(theta_1,theta_2,theta_3,handles);

for k=1:40 
 val1_plus   = theta_1_tmp + (theta_1 - theta_1_tmp)* (k)/40
 val2_plus   = theta_2_tmp + (theta_2 - theta_2_tmp)* (k)/40
 val3_plus   = theta_3_tmp + (theta_3 - theta_3_tmp)* (k)/40
 set_param([ModelName '/Slider Gain'],'Gain',num2str(val1_plus*180/pi));
 set_param([ModelName '/Slider Gain1'],'Gain',num2str(val2_plus*180/pi));
 set_param([ModelName '/Slider Gain2'],'Gain',num2str(val3_plus*180/pi));
 pause(0.05);
end


theta_1_tmp = theta_1;
theta_2_tmp = theta_2;
theta_3_tmp = theta_3;


% --- Executes on button press in BEGIN.
function BEGIN_Callback(hObject, eventdata, handles)
% hObject    handle to BEGIN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName = 'ASSEMBLY_3_JOINTS';
% hObject    handle to Begin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global theta_1;
global theta_2;
global theta_3;
global theta_1_tmp;
global theta_2_tmp;
global theta_3_tmp;

theta_1 = 0;
theta_2 = 0;
theta_3 = 0;
handles.theta1.String = num2str(theta_1);
handles.slider1.Value=theta_1;
handles.theta2.String = num2str(theta_2);
handles.slider2.Value=theta_2;
handles.theta3.String = num2str(theta_3);
handles.slider3.Value=theta_3;


Forward(theta_1,theta_2,theta_3,handles);

 set_param([ModelName '/Slider Gain'],'Gain',num2str(theta_1));
 set_param([ModelName '/Slider Gain1'],'Gain',num2str(theta_2));
 set_param([ModelName '/Slider Gain2'],'Gain',num2str(theta_3));

theta_1_tmp = theta_1;
theta_2_tmp = theta_2;
theta_3_tmp = theta_3;


% --- Executes on button press in INVERSE.
function INVERSE_Callback(hObject, eventdata, handles)
% hObject    handle to INVERSE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ModelName= 'ASSEMBLY_3_JOINTS';
global theta_1;
global theta_2;
global theta_3;
global theta_1_tmp;
global theta_2_tmp;
global theta_3_tmp;


x = str2double(handles.X.String);
y = str2double(handles.Y.String);
z = str2double(handles.Z.String);
roll= str2double(handles.ROLL.String)*pi/180;
yaw= str2double(handles.YAW.String)*pi/180;
pitch= str2double(handles.PITCH.String)*pi/180;

[theta_1, theta_2, theta_3, fail] = Inverse(x, y, z,theta_1_tmp, theta_2_tmp, theta_3_tmp);
Forward(theta_1,theta_2,theta_3,handles);
if fail==0
set(handles.theta1,'string',num2str(theta_1*180/pi));
handles.slider1.Value=theta_1*180/pi;
set(handles.theta2,'string',num2str(theta_2*180/pi));
handles.slider2.Value=theta_2*180/pi;
set(handles.theta3,'string',num2str(theta_3*180/pi));
handles.slider3.Value=theta_3*180/pi;
for k=1:40 
 val1_plus   = theta_1_tmp + (theta_1 - theta_1_tmp)* (k)/40;
 val2_plus   = theta_2_tmp + (theta_2 - theta_2_tmp)* (k)/40;
 val3_plus   = theta_3_tmp + (theta_3 - theta_3_tmp)* (k)/40;
 set_param([ModelName '/Slider Gain'],'Gain',num2str(val1_plus*180/pi));
 set_param([ModelName '/Slider Gain1'],'Gain',num2str(val2_plus*180/pi));
 set_param([ModelName '/Slider Gain2'],'Gain',num2str(val3_plus*180/pi));
 pause(0.05);
end
else
    h = msgbox('Out of range', 'Error','error');
end
theta_1_tmp = theta_1;
theta_2_tmp = theta_2;
theta_3_tmp = theta_3;
