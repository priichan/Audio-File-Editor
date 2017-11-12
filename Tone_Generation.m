function varargout = Tone_Generation(varargin)
% TONE_GENERATION MATLAB code for Tone_Generation.fig
%      TONE_GENERATION, by itself, creates a new TONE_GENERATION or raises the existing
%      singleton*.
%
%      H = TONE_GENERATION returns the handle to a new TONE_GENERATION or the handle to
%      the existing singleton*.
%
%      TONE_GENERATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TONE_GENERATION.M with the given input arguments.
%
%      TONE_GENERATION('Property','Value',...) creates a new TONE_GENERATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tone_Generation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tone_Generation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tone_Generation

% Last Modified by GUIDE v2.5 02-Dec-2016 00:54:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tone_Generation_OpeningFcn, ...
                   'gui_OutputFcn',  @Tone_Generation_OutputFcn, ...
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


% --- Executes just before Tone_Generation is made visible.
function Tone_Generation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tone_Generation (see VARARGIN)

% Choose default command line output for Tone_Generation
handles.output = hObject;

 % set the sample rate (Hz)
 handles.Fs       = 8192;
 % create the recorder
 handles.recorder = audiorecorder(handles.Fs,8,1);
 % assign a timer function to the recorder
 set(handles.recorder,'TimerPeriod',1,'TimerFcn',{@audioTimer,hObject});

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Tone_Generation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Tone_Generation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in C.
function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=261.626;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in D.
function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=293.665;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in E.
function E_Callback(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=329.628;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in F.
function F_Callback(hObject, eventdata, handles)
% hObject    handle to F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=349.228;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in G.
function G_Callback(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=391.995;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in sine.
function sine_Callback(hObject, eventdata, handles)
% hObject    handle to sine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sine


% --- Executes on button press in square.
function square_Callback(hObject, eventdata, handles)
% hObject    handle to square (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of square


% --- Executes on button press in sawtooth.
function sawtooth_Callback(hObject, eventdata, handles)
% hObject    handle to sawtooth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sawtooth


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global A
A=num2str(get(handles.slider1,'Value'));
set(handles.dispVol,'String',str2num(A));




% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in A.
function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t fs;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=440.000;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);


% --- Executes on button press in B.
function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t fs;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=493.883;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in high_C.
function high_C_Callback(hObject, eventdata, handles)
% hObject    handle to high_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t fs;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=523.251;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in C_sharp.
function C_sharp_Callback(hObject, eventdata, handles)
% hObject    handle to C_sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t fs;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=277.183;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in D_sharp.
function D_sharp_Callback(hObject, eventdata, handles)
% hObject    handle to D_sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t fs;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=311.127;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in F_sharp.
function F_sharp_Callback(hObject, eventdata, handles)
% hObject    handle to F_sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t fs;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=369.994;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in G_sharp.
function G_sharp_Callback(hObject, eventdata, handles)
% hObject    handle to G_sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t fs;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=415.305;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);

% --- Executes on button press in A_sharp.
function A_sharp_Callback(hObject, eventdata, handles)
% hObject    handle to A_sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y A f t fs;

A=get(handles.slider1,'Value');
fs=44100;
t=0:(1/fs):1-(1/fs);
f=466.164;

hRadioButton=get(handles.makeaselection,'SelectedObject');
eqnStr=get(hRadioButton,'String');
if strcmpi(eqnStr,'Sine');
    y=A*sin(2.*pi.*f.*t);
elseif strcmpi(eqnStr,'Square');
    y=A*square(2.*pi.*f.*t);
else strcmpi(eqnStr,'Sawtooth');
    y=A*sawtooth(2.*pi.*f.*t);
end

axes(handles.axes1);

plot(t,y,'-r');
axis([0,0.012,-5,5]);
xlabel('time');
ylabel('amplitude');
grid on;
    
sound(y,fs);


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y fs;
fs=44100;
fileName = uiputfile({'*.mp4';'*.wav';'*.au';'*.flac';'*.m4a';'*.oga';'*.ogg'},'Save as');
audiowrite(fileName,y,fs);
