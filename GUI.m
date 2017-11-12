function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 02-Dec-2016 21:55:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in Stop.
function Stop_Callback(hObject, eventdata, handles)
% hObject    handle to Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio timeholder yAudio fsAudio audio1 audio2 audio3 audio4 audio5 audio6 audio7 audio8 audio9;

delete(timeholder) %gets rid of the line tracking time on graph
if get(handles.Insert1,'BackgroundColor') == [0 1 0]; %if this audio file is selected, then execute
    color = get(handles.load1,'BackgroundColor');
    set(handles.Insert1,'String',audio1,'Backgroundcolor',color,'enable','on'); %unselect audio file
    stop(audio); %stop the audio that is playing
    yAudio = 0; %clear the yAudio variable
    fsAudio = 0; %clear the fsAudio variable
elseif get(handles.Insert2,'BackgroundColor')== [0 1 0]; %if this audio file is selected, then execute
    color = get(handles.load2,'BackgroundColor');
    set(handles.Insert2,'String',audio2,'Backgroundcolor',color,'enable','on');
    stop(audio);
    yAudio = 0;
    fsAudio = 0;
elseif get(handles.Insert3,'BackgroundColor')== [0 1 0]; %if this audio file is selected, then execute
    color = get(handles.load3,'BackgroundColor');
    set(handles.Insert3,'String',audio3,'Backgroundcolor',color,'enable','on');
    stop(audio);
    yAudio = 0;
    fsAudio = 0;
elseif get(handles.Insert4,'BackgroundColor')== [0 1 0];
    color = get(handles.load4,'BackgroundColor');
    set(handles.Insert4,'String',audio4,'Backgroundcolor',color,'enable','on');
    stop(audio);
    yAudio = 0;
    fsAudio = 0;
elseif get(handles.Insert5,'BackgroundColor')== [0 1 0];
    color = get(handles.load5,'BackgroundColor');
    set(handles.Insert5,'String',audio5,'Backgroundcolor',color,'enable','on');
    stop(audio);
    yAudio = 0;
    fsAudio = 0;
elseif get(handles.Insert6,'BackgroundColor')== [0 1 0];
    color = get(handles.load6,'BackgroundColor');
    set(handles.Insert6,'String',audio6,'Backgroundcolor',color,'enable','on');
    stop(audio);
    yAudio = 0;
    fsAudio = 0;
elseif get(handles.Insert7,'BackgroundColor')== [0 1 0];
    color = get(handles.load7,'BackgroundColor');
    set(handles.Insert7,'String',audio7,'Backgroundcolor',color,'enable','on');
    stop(audio);
    yAudio = 0;
    fsAudio = 0;
elseif get(handles.Insert8,'BackgroundColor')== [0 1 0];
    color = get(handles.load8,'BackgroundColor');
    set(handles.Insert8,'String',audio8,'Backgroundcolor',color,'enable','on');
    stop(audio);
    yAudio = 0;
    fsAudio = 0;
else get(handles.Insert9,'BackgroundColor')== [0 1 0];
    color = get(handles.load9,'BackgroundColor');
    set(handles.Insert9,'String',audio9,'Backgroundcolor',color,'enable','on');
    stop(audio);
    yAudio = 0;
    fsAudio = 0;
end

if get(handles.skip10forwd,'BackgroundColor') == [0 1 0]; %if the color of the skip10forwd button is green
    color = get(handles.pureTone,'BackgroundColor'); %get the color of button from pureTone button
    set(handles.skip10forwd,'BackgroundColor',color,'enable','on'); %make the color of the skip10forwd button the same as the pureTone button
elseif get(handles.skip10back,'BackgroundColor') == [0 1 0]; %if the color of the skip10back button is green
    color = get(handles.pureTone,'BackgroundColor'); %get the color of the button from pureTone button
    set(handles.skip10back,'BackgroundColor',color,'enable','on'); %make the color of the skip10back button the same as the pureTone button
end

% --- Executes on button press in Pause.
function Pause_Callback(hObject, eventdata, handles)
% hObject    handle to Pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio timeholder;
pause(audio); %pause the audio
delete(timeholder); %gets rid of the line tracking time on graph 

% --- Executes on button press in Play.
function Play_Callback(hObject, eventdata, handles)
% hObject    handle to Play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio fsAudio audio volNum speedNum vol timeholder speed yAudioWithTime startTime endTime;
speedNum = get(handles.speednum,'String'); %get the speed number from the speed textbox
volNum = get(handles.dispVol,'String'); %get the volume number from the volume textbox
speedNum = str2num(speedNum); %convert the string to a number
volNum = str2num(volNum); %convert the string to a number

delete(timeholder) %gets rid of the line tracking time on graph
if isnumeric(volNum)==0;
    vol = 1; %if the user did not move the slider before song is played, the default volume is 1
else isnumeric(volNum)==1;
    vol = volNum; %if the user did move the slider, get the new volume from the volume textbox
end

if isnumeric(speedNum)==0;
    speed = 1; %if the user did not move the slider before song is played, the default speed is 1
else isnumeric(speedNum)==1;
    speed = speedNum; %if the user did move the slider, get the new volume from the speed textbox
end

startTime=get(handles.startTime,'String'); %find out where to start the song from the string in the startTime box
startTime=str2num(startTime);  %convert string to number

time=(1/44100)*length(yAudio); %the total length (duration) of the song

if isnumeric(startTime)==0; 
    startTime=1; %if the user did not specify a starting point for the song before it's played, start at the first second
else isnumeric(startTime)==1;
    startTime=startTime; %otherwise start at the time specified in the startTime box
end
 
time=(1/44100)*length(yAudio); %total length of the song

endTime=get(handles.endTime,'String'); %find out where the user wants to end the song by getting the value in the endTime textbox
ending = 'end'; 
if strcmpi(endTime,ending)==1;
    endTime = time; %if the endTime is 'end' aka user did not change the endTime, then play until the end of the song
else
    endTime = str2num(endTime); %if the endTime is specified in the textbox, stop the song there 
end
yAudioWithTime= yAudio((startTime*fsAudio):(endTime*fsAudio)); %change the length of yAudio so that it's the length (from the start and end time)that the user wants
audio = audioplayer(vol*yAudioWithTime,speed*fsAudio); %apply correct volume, speed, and start and end times to the audio

timeholder=line([0,0],[-2,2],'color','k','linewidth',1); %make a line that tracks where the music is on the graph
tic; %start internal timer
t=toc*speed; %manipulates how fast the timer goes depending on what speed the user selected

play(audio); 
while t+startTime<=endTime %keep count from the start time until the end time
set(timeholder,'x',(t+startTime)*[1,1]) %change the x coordinate of the timeholder as time changes
pause(0.0001) %similar to animations, a pause command is needed
t=toc*speed; %how fast the internal timer goes depends on the speed user selected

set(handles.dispTime,'String',num2str(floor(t+startTime))); %display the time that the audio is at
end


% --- Executes on slider movement.
function Volume_Callback(hObject, eventdata, handles)
% hObject    handle to Volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global audio volumeVal timeholder;
volumeVal=get(handles.Volume,'Value'); %get the value from the slider
set(handles.dispVol,'String',num2str(volumeVal)); %puts that value at the volumn textbox 

pause(audio); %pause the audio
delete(timeholder) %gets rid of the line tracking time on graph


% --- Executes during object creation, after setting all properties.
function Volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function speedtime_Callback(hObject, eventdata, handles)
% hObject    handle to speedtime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of speedtime as text
%        str2double(get(hObject,'String')) returns contents of speedtime as a double


% --- Executes during object creation, after setting all properties.
function speedtime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to speedtime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slowtime_Callback(hObject, eventdata, handles)
% hObject    handle to slowtime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slowtime as text
%        str2double(get(hObject,'String')) returns contents of slowtime as a double


% --- Executes during object creation, after setting all properties.
function slowtime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slowtime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Reverse.
function Reverse_Callback(hObject, eventdata, handles)
% hObject    handle to Reverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio time audio timeholder ;
pause(audio); %pause audio
delete(timeholder) %gets rid of the line tracking time on graph 

yAudio=flipud(yAudio); %reverse means that the y matrix is flipped upside down

cla reset; %resets the graph
axes(handles.axes1); %specifies which graph
 
t=linspace(0,time,length(yAudio)); %time input
plot(t,yAudio);hold on; %new graph where yAudio is now flipped; what yAudio is during a song depends on time
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto; %the axis limits changes automatically depending on the song



function startTime_Callback(hObject, eventdata, handles)
% hObject    handle to startTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startTime as text
%        str2double(get(hObject,'String')) returns contents of startTime as a double


% --- Executes during object creation, after setting all properties.
function startTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function endTime_Callback(hObject, eventdata, handles)
% hObject    handle to endTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of endTime as text
%        str2double(get(hObject,'String')) returns contents of endTime as a double


% --- Executes during object creation, after setting all properties.
function endTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to endTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in Echo.
function Echo_Callback(hObject, eventdata, handles)
% hObject    handle to Echo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio newEcho audio timeholder;
pause(audio);
pausedTime = get(handles.dispTime,'String'); %get the time where the audio was paused
pausedTime=str2num(pausedTime); %convert string to number
delete(timeholder) %gets rid of the line tracking time on graph
newEcho=yAudio; %create a new variable newEcho
A=10000;

for a=A+pausedTime:length(yAudio) %create a loop to manipulate yAudio
    newEcho(a,1)=yAudio(a,1)+yAudio(a-A,2);
     newEcho(a,2)=yAudio(a,2)+yAudio(a-A,1);
end

yAudio=newEcho; %replace yAudio with low, all yAudio now is equal to newEcho


% --- Executes on button press in Resume.
function Resume_Callback(hObject, eventdata, handles)
% hObject    handle to Resume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio yAudio timeholder time fsAudio endTime;

    pausedTime = get(handles.dispTime,'String'); %get the time from where the audio was paused
    pausedTime=str2num(pausedTime); %convert string to number
    speedNum = get(handles.speednum,'String'); %get the speed from speed textbox
    volNum = get(handles.dispVol,'String'); %get the volume from the volume textbox
    speedNum = str2num(speedNum); %convert string to number
    volNum = str2num(volNum); %convert string to number

    if isnumeric(volNum)==0;
       vol = 1;
    elseif isnumeric(volNum)==1;
       vol = volNum;
    end

    if isnumeric(speedNum)==0;
       speed = 1;
    else isnumeric(speedNum)==1;
       speed = speedNum;
    end

    time=(1/44100)*length(yAudio);

endTime=get(handles.endTime,'String');
if endTime == 'end';
    endTime = time;
else
    endTime = str2num(endTime);
end   

if get(handles.skip10forwd,'BackgroundColor')==[0 1 0]; %goes through this loop of code when skip 10 forward is clicked - when the background color is green
    color = get(handles.pureTone,'BackgroundColor');
    set(handles.skip10forwd,'BackgroundColor',color,'enable','on'); %change the green color to the color of the pushbutton pureTone
    yAudioWithTime= yAudio((pausedTime+10)*fsAudio:endTime*fsAudio); %resume from the time it was paused + 10 more seconds
    audio = audioplayer(vol*yAudioWithTime,speed*fsAudio); %audio changes because time is changed
    play(audio); %play the new audio
    
    cla reset; %resets the graph

axes(handles.axes1); %specify which graph

time=(1/44100)*length(yAudio);
t=linspace(0,time,length(yAudio));
plot(t,yAudio);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;

timeholder=line([pausedTime, pausedTime],[-2,2],'color','k','linewidth',1);
tic;
t=toc*speed;


while t+pausedTime+10<endTime %have the line in the graph start at the paused time + 10 more seconds
set(timeholder,'x',(t+pausedTime+10)*[1,1]) %changes the x position of the timeholder depending on the time
pause(0.0001)
t=toc*speed; %timer's speed depends on the speed the user selected

set(handles.dispTime,'String',num2str(floor(t+pausedTime+10))); %display the right time in the textbox
end
end
if get(handles.skip10back,'BackgroundColor')==[0 1 0]; %this loop will go through if the skip10back button is pressed - meaning it is green
    color = get(handles.pureTone,'BackgroundColor');
    set(handles.skip10back,'BackgroundColor',color,'enable','on'); %if the button is green make it the same color as pureTone
    yAudioWithTime= yAudio((pausedTime-10)*fsAudio:endTime*fsAudio); %resume from the time it was paused - 10 seconds
    audio = audioplayer(vol*yAudioWithTime,speed*fsAudio); %audio changes because yAudio is changed
    play(audio);
    
    cla reset; %reset the graph

axes(handles.axes1);

time=(1/44100)*length(yAudio);
t=linspace(0,time,length(yAudio));
plot(t,yAudio);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
ylim([-1,1]);
xlim auto;

timeholder=line([pausedTime, pausedTime],[-2,2],'color','k','linewidth',1);
tic;
t=toc*speed;


while t+pausedTime-10<endTime %move the timeholder back 10 seconds
set(timeholder,'x',(t+pausedTime-10)*[1,1])
pause(0.0001)
t=toc*speed;

set(handles.dispTime,'String',num2str(floor(t+pausedTime-10)));
end
end


 yAudioWithTime= yAudio((pausedTime*fsAudio):(endTime*fsAudio));
    audio = audioplayer(vol*yAudioWithTime,speed*fsAudio); %new audio with new speed & time
    resume(audio);
    
    cla reset; %resets the graph

axes(handles.axes1);

time=(1/44100)*length(yAudio);
t=linspace(0,time,length(yAudio));
plot(t,yAudio);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;

timeholder=line([pausedTime, pausedTime],[-2,2],'color','k','linewidth',1);
tic;
t=toc*speed;


while t+pausedTime<endTime %continue resuming as usual if skip10forwd and skip10back are not selected
set(timeholder,'x',(t+pausedTime)*[1,1])
pause(0.0001)
t=toc*speed;

set(handles.dispTime,'String',num2str(floor(t+pausedTime)));
end




% --- Executes on slider movement.
function speed_Callback(hObject, eventdata, handles)
% hObject    handle to speed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global audio speedVal timeholder;

speedVal = get(handles.speed,'Value'); 
speedVal = num2str(speedVal);

set(handles.speednum,'String',num2str(speedVal));
pause(audio);
delete(timeholder) %gets rid of the line tracking time on graph



% --- Executes during object creation, after setting all properties.
function speed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to speed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editSkipTime_Callback(hObject, eventdata, handles)
% hObject    handle to editSkipTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSkipTime as text
%        str2double(get(hObject,'String')) returns contents of editSkipTime as a double


% --- Executes during object creation, after setting all properties.
function editSkipTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSkipTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in pureTone.
function pureTone_Callback(hObject, eventdata, handles)
% hObject    handle to pureTone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
GUI_2_handle = Tone_Generation; %link this GUI with a second GUI - Tone Generation


% --- Executes on button press in skip10forwd.
function skip10forwd_Callback(hObject, eventdata, handles)
% hObject    handle to skip10forwd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio timeholder;
set(handles.skip10forwd,'BackgroundColor','green','enable','off');

pause(audio);
delete(timeholder) %gets rid of the line tracking time on graph


% --- Executes on button press in skip10back.
function skip10back_Callback(hObject, eventdata, handles)
% hObject    handle to skip10back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio timeholder;
set(handles.skip10back,'BackgroundColor','green','enable','off');

pause(audio);
delete(timeholder) %gets rid of the line tracking time on graph


% --- Executes on button press in Insert2.
function Insert2_Callback(hObject, eventdata, handles)
% hObject    handle to Insert2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio yAudio fsAudio audio1 audio2 yAudio2 fsAudio2 audio3 time volNum vol audio4 audio5 audio6 audio7 audio8 audio9;
set(handles.Insert2,'string','SELECTED','BackgroundColor','green','enable','off');
if get(handles.Insert1,'BackgroundColor')==[0 1 0];
    color = get(handles.load1,'BackgroundColor');
    set(handles.Insert1,'string',audio1,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert9,'BackgroundColor')==[0 1 0];
    color = get(handles.load9,'BackgroundColor');
    set(handles.Insert9,'string',audio9,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert3,'BackgroundColor')==[0 1 0];
    color = get(handles.load3,'BackgroundColor');
    set(handles.Insert3,'string',audio3,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert4,'BackgroundColor')==[0 1 0];
    color = get(handles.load4,'BackgroundColor');
    set(handles.Insert4,'string',audio4,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert5,'BackgroundColor')==[0 1 0];
    color = get(handles.load5,'BackgroundColor');
    set(handles.Insert5,'string',audio5,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert7,'BackgroundColor')==[0 1 0];
    color = get(handles.load7,'BackgroundColor');
    set(handles.Insert7,'string',audio7,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert6,'BackgroundColor')==[0 1 0];
    color = get(handles.load6,'BackgroundColor');
    set(handles.Insert6,'string',audio6,'Backgroundcolor',color,'enable','on');
    pause(audio);
else get(handles.Insert8,'BackgroundColor')==[0 1 0];
    color = get(handles.load8,'BackgroundColor');
    set(handles.Insert8,'string',audio8,'Backgroundcolor',color,'enable','on');
    pause(audio);
end
yAudio = yAudio2;
fsAudio = fsAudio2;

if get(handles.mono,'Value') == 1.0;
    right = flipud(yAudio);
    left = yAudio;
    yAudio = [left right];
end

if get(handles.stereo,'Value') == 1.0;
yAudio = yAudio2;
fsAudio = fsAudio2;
end

set(handles.dispAudioFileName,'String',audio2);

cla reset;

axes(handles.axes1);

volNum = get(handles.dispVol,'String');
volNum = str2num(volNum); 

if isnumeric(volNum)==0;
    vol = 1;
else isnumeric(volNum)==1;
    vol = volNum;
end

time=(1/44100)*length(yAudio2);
t=linspace(0,time,length(yAudio2));
plot(t,vol*yAudio2);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;



% --- Executes on button press in Insert3.
function Insert3_Callback(hObject, eventdata, handles)
% hObject    handle to Insert3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio yAudio fsAudio audio1 audio2 yAudio3 fsAudio3 audio3 time volNum vol audio4 audio5 audio6 audio7 audio8 audio9;
set(handles.Insert3,'string','SELECTED','BackgroundColor','green','enable','off');
if get(handles.Insert1,'BackgroundColor')==[0 1 0];
    color = get(handles.load1,'BackgroundColor');
    set(handles.Insert1,'string',audio1,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert2,'BackgroundColor')==[0 1 0];
    color = get(handles.load2,'BackgroundColor');
    set(handles.Insert2,'string',audio2,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert9,'BackgroundColor')==[0 1 0];
    color = get(handles.load9,'BackgroundColor');
    set(handles.Insert9,'string',audio9,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert4,'BackgroundColor')==[0 1 0];
    color = get(handles.load4,'BackgroundColor');
    set(handles.Insert4,'string',audio4,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert5,'BackgroundColor')==[0 1 0];
    color = get(handles.load5,'BackgroundColor');
    set(handles.Insert5,'string',audio5,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert7,'BackgroundColor')==[0 1 0];
    color = get(handles.load7,'BackgroundColor');
    set(handles.Insert7,'string',audio7,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert6,'BackgroundColor')==[0 1 0];
    color = get(handles.load6,'BackgroundColor');
    set(handles.Insert6,'string',audio6,'Backgroundcolor',color,'enable','on');
    pause(audio);
else get(handles.Insert8,'BackgroundColor')==[0 1 0];
    color = get(handles.load8,'BackgroundColor');
    set(handles.Insert8,'string',audio8,'Backgroundcolor',color,'enable','on');
    pause(audio);
end
yAudio = yAudio3;
fsAudio = fsAudio3;

if get(handles.mono,'Value') == 1.0;
    right = flipud(yAudio);
    left = yAudio;
    yAudio = [left right];
end

if get(handles.stereo,'Value') == 1.0;
yAudio = yAudio3;
fsAudio = fsAudio3;
end

set(handles.dispAudioFileName,'String',audio3);

cla reset;

axes(handles.axes1);

volNum = get(handles.dispVol,'String');
volNum = str2num(volNum); 

if isnumeric(volNum)==0;
    vol = 1;
else isnumeric(volNum)==1;
    vol = volNum;
end

time=(1/44100)*length(yAudio3);
t=linspace(0,time,length(yAudio3));
plot(t,vol*yAudio3);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;


% --- Executes on button press in Insert4.
function Insert4_Callback(hObject, eventdata, handles)
% hObject    handle to Insert4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio yAudio fsAudio audio1 audio2 yAudio4 fsAudio4 audio3 time volNum vol audio4 audio5 audio6 audio7 audio8 audio9;
set(handles.Insert4,'string','SELECTED','BackgroundColor','green','enable','off');
if get(handles.Insert1,'BackgroundColor')==[0 1 0];
    color = get(handles.load1,'BackgroundColor');
    set(handles.Insert1,'string',audio1,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert2,'BackgroundColor')==[0 1 0];
    color = get(handles.load2,'BackgroundColor');
    set(handles.Insert2,'string',audio2,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert3,'BackgroundColor')==[0 1 0];
    color = get(handles.load3,'BackgroundColor');
    set(handles.Insert3,'string',audio3,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert9,'BackgroundColor')==[0 1 0];
    color = get(handles.load9,'BackgroundColor');
    set(handles.Insert9,'string',audio9,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert5,'BackgroundColor')==[0 1 0];
    color = get(handles.load5,'BackgroundColor');
    set(handles.Insert5,'string',audio5,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert7,'BackgroundColor')==[0 1 0];
    color = get(handles.load7,'BackgroundColor');
    set(handles.Insert7,'string',audio7,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert6,'BackgroundColor')==[0 1 0];
    color = get(handles.load6,'BackgroundColor');
    set(handles.Insert6,'string',audio6,'Backgroundcolor',color,'enable','on');
    pause(audio);
else get(handles.Insert8,'BackgroundColor')==[0 1 0];
    color = get(handles.load8,'BackgroundColor');
    set(handles.Insert8,'string',audio8,'Backgroundcolor',color,'enable','on');
    pause(audio);
end
yAudio = yAudio4;
fsAudio = fsAudio4;

if get(handles.mono,'Value') == 1.0;
    right = flipud(yAudio);
    left = yAudio;
    yAudio = [left right];
end

if get(handles.stereo,'Value') == 1.0;
yAudio = yAudio4;
fsAudio = fsAudio4;
end

set(handles.dispAudioFileName,'String',audio4);

cla reset;

axes(handles.axes1);

volNum = get(handles.dispVol,'String');
volNum = str2num(volNum); 

if isnumeric(volNum)==0;
    vol = 1;
else isnumeric(volNum)==1;
    vol = volNum;
end

time=(1/44100)*length(yAudio4);
t=linspace(0,time,length(yAudio4));
plot(t,vol*yAudio4);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;


% --- Executes on button press in Insert5.
function Insert5_Callback(hObject, eventdata, handles)
% hObject    handle to Insert5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio yAudio fsAudio audio1 audio2 yAudio5 fsAudio5 audio3 time volNum vol audio4 audio5 audio6 audio7 audio8 audio9;
set(handles.Insert5,'string','SELECTED','BackgroundColor','green','enable','off');
if get(handles.Insert1,'BackgroundColor')==[0 1 0];
    color = get(handles.load1,'BackgroundColor');
    set(handles.Insert1,'string',audio1,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert2,'BackgroundColor')==[0 1 0];
    color = get(handles.load2,'BackgroundColor');
    set(handles.Insert2,'string',audio2,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert3,'BackgroundColor')==[0 1 0];
    color = get(handles.load3,'BackgroundColor');
    set(handles.Insert3,'string',audio3,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert4,'BackgroundColor')==[0 1 0];
    color = get(handles.load4,'BackgroundColor');
    set(handles.Insert4,'string',audio4,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert6,'BackgroundColor')==[0 1 0];
    color = get(handles.load6,'BackgroundColor');
    set(handles.Insert6,'string',audio6,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert7,'BackgroundColor')==[0 1 0];
    color = get(handles.load7,'BackgroundColor');
    set(handles.Insert7,'string',audio7,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert8,'BackgroundColor')==[0 1 0];
    color = get(handles.load8,'BackgroundColor');
    set(handles.Insert8,'string',audio8,'Backgroundcolor',color,'enable','on');
    pause(audio);
else get(handles.Insert9,'BackgroundColor')==[0 1 0];
    color = get(handles.load9,'BackgroundColor');
    set(handles.Insert9,'string',audio9,'Backgroundcolor',color,'enable','on');
    pause(audio);
end
yAudio = yAudio5;
fsAudio = fsAudio5;

if get(handles.mono,'Value') == 1.0;
    right = flipud(yAudio);
    left = yAudio;
    yAudio = [left right];
end

if get(handles.stereo,'Value') == 1.0;
yAudio = yAudio5;
fsAudio = fsAudio5;
end

set(handles.dispAudioFileName,'String',audio5);

cla reset;

axes(handles.axes1);

volNum = get(handles.dispVol,'String');
volNum = str2num(volNum); 

if isnumeric(volNum)==0;
    vol = 1;
else isnumeric(volNum)==1;
    vol = volNum;
end

time=(1/44100)*length(yAudio5);
t=linspace(0,time,length(yAudio5));
plot(t,vol*yAudio5);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;


% --- Executes on button press in Insert6.
function Insert6_Callback(hObject, eventdata, handles)
% hObject    handle to Insert6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio yAudio fsAudio audio1 audio2 yAudio6 fsAudio6 audio3 time volNum vol audio4 audio5 audio6 audio7 audio8 audio9;
set(handles.Insert6,'string','SELECTED','BackgroundColor','green','enable','off');
if get(handles.Insert1,'BackgroundColor')==[0 1 0];
    color = get(handles.load1,'BackgroundColor');
    set(handles.Insert1,'string',audio1,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert2,'BackgroundColor')==[0 1 0];
    color = get(handles.load2,'BackgroundColor');
    set(handles.Insert2,'string',audio2,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert3,'BackgroundColor')==[0 1 0];
    color = get(handles.load3,'BackgroundColor');
    set(handles.Insert3,'string',audio3,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert4,'BackgroundColor')==[0 1 0];
    color = get(handles.load4,'BackgroundColor');
    set(handles.Insert4,'string',audio4,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert5,'BackgroundColor')==[0 1 0];
    color = get(handles.load5,'BackgroundColor');
    set(handles.Insert5,'string',audio5,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert7,'BackgroundColor')==[0 1 0];
    color = get(handles.load7,'BackgroundColor');
    set(handles.Insert7,'string',audio7,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert8,'BackgroundColor')==[0 1 0];
    color = get(handles.load8,'BackgroundColor');
    set(handles.Insert8,'string',audio8,'Backgroundcolor',color,'enable','on');
    pause(audio);
else get(handles.Insert9,'BackgroundColor')==[0 1 0];
    color = get(handles.load9,'BackgroundColor');
    set(handles.Insert9,'string',audio9,'Backgroundcolor',color,'enable','on');
    pause(audio);
end
yAudio = yAudio6;
fsAudio = fsAudio6;

if get(handles.mono,'Value') == 1.0;
    right = flipud(yAudio);
    left = yAudio;
    yAudio = [left right];
end

if get(handles.stereo,'Value') == 1.0;
yAudio = yAudio6;
fsAudio = fsAudio6;
end

set(handles.dispAudioFileName,'String',audio6);

cla reset;

axes(handles.axes1);

volNum = get(handles.dispVol,'String');
volNum = str2num(volNum); 

if isnumeric(volNum)==0;
    vol = 1;
else isnumeric(volNum)==1;
    vol = volNum;
end

time=(1/44100)*length(yAudio6);
t=linspace(0,time,length(yAudio6));
plot(t,vol*yAudio6);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;


% --- Executes on button press in Insert7.
function Insert7_Callback(hObject, eventdata, handles)
% hObject    handle to Insert7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio yAudio fsAudio audio1 audio2 yAudio7 fsAudio7 audio3 time volNum vol audio4 audio6 audio5 audio7 audio8 audio9;
set(handles.Insert7,'string','SELECTED','BackgroundColor','green','enable','off');
if get(handles.Insert1,'BackgroundColor')==[0 1 0];
    color = get(handles.load1,'BackgroundColor');
    set(handles.Insert1,'string',audio1,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert2,'BackgroundColor')==[0 1 0];
    color = get(handles.load2,'BackgroundColor');
    set(handles.Insert2,'string',audio2,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert3,'BackgroundColor')==[0 1 0];
    color = get(handles.load3,'BackgroundColor');
    set(handles.Insert3,'string',audio3,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert4,'BackgroundColor')==[0 1 0];
    color = get(handles.load4,'BackgroundColor');
    set(handles.Insert4,'string',audio4,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert6,'BackgroundColor')==[0 1 0];
    color = get(handles.load6,'BackgroundColor');
    set(handles.Insert6,'string',audio6,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert5,'BackgroundColor')==[0 1 0];
    color = get(handles.load5,'BackgroundColor');
    set(handles.Insert5,'string',audio5,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert8,'BackgroundColor')==[0 1 0];
    color = get(handles.load8,'BackgroundColor');
    set(handles.Insert8,'string',audio8,'Backgroundcolor',color,'enable','on');
    pause(audio);
else get(handles.Insert9,'BackgroundColor')==[0 1 0];
    color = get(handles.load9,'BackgroundColor');
    set(handles.Insert9,'string',audio9,'Backgroundcolor',color,'enable','on');
    pause(audio);
end
yAudio = yAudio7;
fsAudio = fsAudio7;

if get(handles.mono,'Value') == 1.0;
    right = flipud(yAudio);
    left = yAudio;
    yAudio = [left right];
end

if get(handles.stereo,'Value') == 1.0;
yAudio = yAudio7;
fsAudio = fsAudio7;
end

set(handles.dispAudioFileName,'String',audio7);

cla reset;

axes(handles.axes1);

volNum = get(handles.dispVol,'String');
volNum = str2num(volNum); 

if isnumeric(volNum)==0;
    vol = 1;
else isnumeric(volNum)==1;
    vol = volNum;
end

time=(1/44100)*length(yAudio7);
t=linspace(0,time,length(yAudio7));
plot(t,vol*yAudio7);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;


% --- Executes on button press in Insert8.
function Insert8_Callback(hObject, eventdata, handles)
% hObject    handle to Insert8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio yAudio fsAudio audio1 audio2 yAudio8 fsAudio8 audio3 time volNum vol audio4 audio5 audio6 audio7 audio8 audio9;
set(handles.Insert8,'string','SELECTED','BackgroundColor','green','enable','off');
if get(handles.Insert1,'BackgroundColor')==[0 1 0];
    color = get(handles.load1,'BackgroundColor');
    set(handles.Insert1,'string',audio1,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert2,'BackgroundColor')==[0 1 0];
    color = get(handles.load2,'BackgroundColor');
    set(handles.Insert2,'string',audio2,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert3,'BackgroundColor')==[0 1 0];
    color = get(handles.load3,'BackgroundColor');
    set(handles.Insert3,'string',audio3,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert4,'BackgroundColor')==[0 1 0];
    color = get(handles.load4,'BackgroundColor');
    set(handles.Insert4,'string',audio4,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert5,'BackgroundColor')==[0 1 0];
    color = get(handles.load5,'BackgroundColor');
    set(handles.Insert5,'string',audio5,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert7,'BackgroundColor')==[0 1 0];
    color = get(handles.load7,'BackgroundColor');
    set(handles.Insert7,'string',audio7,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert6,'BackgroundColor')==[0 1 0];
    color = get(handles.load6,'BackgroundColor');
    set(handles.Insert6,'string',audio6,'Backgroundcolor',color,'enable','on');
    pause(audio);
else get(handles.Insert9,'BackgroundColor')==[0 1 0];
    color = get(handles.load9,'BackgroundColor');
    set(handles.Insert9,'string',audio9,'Backgroundcolor',color,'enable','on');
    pause(audio);
end
yAudio = yAudio8;
fsAudio = fsAudio8;

if get(handles.mono,'Value') == 1.0;
    right = flipud(yAudio);
    left = yAudio;
    yAudio = [left right];
end

if get(handles.stereo,'Value') == 1.0;
yAudio = yAudio8;
fsAudio = fsAudio8;
end

set(handles.dispAudioFileName,'String',audio8);

cla reset;

axes(handles.axes1);

volNum = get(handles.dispVol,'String');
volNum = str2num(volNum); 

if isnumeric(volNum)==0;
    vol = 1;
else isnumeric(volNum)==1;
    vol = volNum;
end

time=(1/44100)*length(yAudio8);
t=linspace(0,time,length(yAudio8));
plot(t,vol*yAudio8);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;


% --- Executes on button press in Insert9.
function Insert9_Callback(hObject, eventdata, handles)
% hObject    handle to Insert9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio yAudio fsAudio audio1 audio2 yAudio9 fsAudio9 audio3 time volNum vol audio4 audio5 audio6 audio7 audio8 audio9;
set(handles.Insert9,'string','SELECTED','BackgroundColor','green','enable','off');
if get(handles.Insert1,'BackgroundColor')==[0 1 0];
    color = get(handles.load1,'BackgroundColor');
    set(handles.Insert1,'string',audio1,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert2,'BackgroundColor')==[0 1 0];
    color = get(handles.load2,'BackgroundColor');
    set(handles.Insert2,'string',audio2,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert3,'BackgroundColor')==[0 1 0];
    color = get(handles.load3,'BackgroundColor');
    set(handles.Insert3,'string',audio3,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert4,'BackgroundColor')==[0 1 0];
    color = get(handles.load4,'BackgroundColor');
    set(handles.Insert4,'string',audio4,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert5,'BackgroundColor')==[0 1 0];
    color = get(handles.load5,'BackgroundColor');
    set(handles.Insert5,'string',audio5,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert7,'BackgroundColor')==[0 1 0];
    color = get(handles.load7,'BackgroundColor');
    set(handles.Insert7,'string',audio7,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert6,'BackgroundColor')==[0 1 0];
    color = get(handles.load6,'BackgroundColor');
    set(handles.Insert6,'string',audio6,'Backgroundcolor',color,'enable','on');
    pause(audio);
else get(handles.Insert8,'BackgroundColor')==[0 1 0];
    color = get(handles.load8,'BackgroundColor');
    set(handles.Insert8,'string',audio8,'Backgroundcolor',color,'enable','on');
    pause(audio);
end
yAudio = yAudio9;
fsAudio = fsAudio9;

if get(handles.mono,'Value') == 1.0;
    right = flipud(yAudio);
    left = yAudio;
    yAudio = [left right];
end

if get(handles.stereo,'Value') == 1.0;
yAudio = yAudio9;
fsAudio = fsAudio9;
end

set(handles.dispAudioFileName,'String',audio9);

cla reset;

axes(handles.axes1);

volNum = get(handles.dispVol,'String');
volNum = str2num(volNum); 

if isnumeric(volNum)==0;
    vol = 1;
else isnumeric(volNum)==1;
    vol = volNum;
end

time=(1/44100)*length(yAudio9);
t=linspace(0,time,length(yAudio9));
plot(t,vol*yAudio9);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;


% --- Executes on button press in load1.
function load1_Callback(hObject, eventdata, handles)
% hObject    handle to load1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio1 fsAudio1 audio1;
audio1 = uigetfile({'*.mp3';'*.mp4';'*.wav';'*.au'},'Select Audio File'); %get the files that are file types: mp4,wav, etc
[yAudio1,fsAudio1]=audioread(audio1);
set(handles.Insert1,'String',audio1); %put the name of the file in the insert1 push button



% --- Executes on button press in load2.
function load2_Callback(hObject, eventdata, handles)
% hObject    handle to load2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio2 fsAudio2 audio2;
audio2 = uigetfile({'*.mp3';'*.mp4';'*.wav';'*.au'},'Select Audio File');
[yAudio2,fsAudio2]=audioread(audio2);
set(handles.Insert2,'String',audio2);


% --- Executes on button press in load3.
function load3_Callback(hObject, eventdata, handles)
% hObject    handle to load3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio3 fsAudio3 audio3;
audio3 = uigetfile({'*.mp3';'*.mp4';'*.wav';'*.au'},'Select Audio File');
[yAudio3,fsAudio3]=audioread(audio3);
set(handles.Insert3,'String',audio3);


% --- Executes on button press in load4.
function load4_Callback(hObject, eventdata, handles)
% hObject    handle to load4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio4 fsAudio4 audio4;
audio4 = uigetfile({'*.mp3';'*.mp4';'*.wav';'*.au'},'Select Audio File');
[yAudio4,fsAudio4]=audioread(audio4);
set(handles.Insert4,'String',audio4);


% --- Executes on button press in load5.
function load5_Callback(hObject, eventdata, handles)
% hObject    handle to load5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio5 fsAudio5 audio5;
audio5 = uigetfile({'*.mp3';'*.mp4';'*.wav';'*.au'},'Select Audio File');
[yAudio5,fsAudio5]=audioread(audio5);
set(handles.Insert5,'String',audio5);


% --- Executes on button press in load6.
function load6_Callback(hObject, eventdata, handles)
% hObject    handle to load6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio6 fsAudio6 audio6;
audio6 = uigetfile({'*.mp3';'*.mp4';'*.wav';'*.au'},'Select Audio File');
[yAudio6,fsAudio6]=audioread(audio6);
set(handles.Insert6,'String',audio6);


% --- Executes on button press in load7.
function load7_Callback(hObject, eventdata, handles)
% hObject    handle to load7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio7 fsAudio7 audio7;
audio7 = uigetfile({'*.mp3';'*.mp4';'*.wav';'*.au'},'Select Audio File');
[yAudio7,fsAudio7]=audioread(audio7);
set(handles.Insert7,'String',audio7);


% --- Executes on button press in load8.
function load8_Callback(hObject, eventdata, handles)
% hObject    handle to load8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio8 fsAudio8 audio8;
audio8 = uigetfile({'*.mp3';'*.mp4';'*.wav';'*.au'},'Select Audio File');
[yAudio8,fsAudio8]=audioread(audio8);
set(handles.Insert8,'String',audio8);


% --- Executes on button press in load9.
function load9_Callback(hObject, eventdata, handles)
% hObject    handle to load9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio9 fsAudio9 audio9;
audio9 = uigetfile({'*.mp3';'*.mp4';'*.wav';'*.au'},'Select Audio File');
[yAudio9,fsAudio9]=audioread(audio9);
set(handles.Insert9,'String',audio9);


% --- Executes on button press in mono.
function mono_Callback(hObject, eventdata, handles)
% hObject    handle to mono (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mono
global yAudio 
tempAudio = ((yAudio(:,1)+yAudio(:,2)))/2;
yAudio = [];
yAudio = tempAudio;



% --- Executes on button press in stereo.
function stereo_Callback(hObject, eventdata, handles)
% hObject    handle to stereo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of stereo
global yAudio fsAudio yAudio1 fsAudio1 
if get(handles.Insert1,'BackgroundColor')==[0 1 0];
yAudio = yAudio1;
fsAudio = fsAudio1;
end


% --- Executes on button press in RemoveVoice.
function RemoveVoice_Callback(hObject, eventdata, handles)
% hObject    handle to RemoveVoice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio left right voiceremove timeholder audio;
pause(audio);
delete(timeholder) %gets rid of the line tracking time on graph

left = yAudio(:,1); %left is the first column in yAudio
right = yAudio(:,2); %right is the second column in yAudio

voiceremove=left-right; %subtract the two columns to eliminate voice 
yAudio=voiceremove; %replace yAudio with low, all yAudio now is equal to high


% --- Executes on button press in Treble.
function Treble_Callback(hObject, eventdata, handles)
% hObject    handle to Treble (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio high audio timeholder;
pause(audio);
pausedTime = get(handles.dispTime,'String');
pausedTime=str2num(pausedTime);
delete(timeholder) %gets rid of the line tracking time on graph

high=yAudio;  %name high with yAudio 
for c=pausedTime+1:length(yAudio);  %manipulate the two columns in high using a loop
    high(c,1)=yAudio(c,1)-yAudio(c-1,1); 
    high(c,2)=yAudio(c,2)-yAudio(c-1,2);
end
yAudio=high; %replace yAudio with the high, all yAudio now is equal to high


% --- Executes on button press in Bass.
function Bass_Callback(hObject, eventdata, handles)
% hObject    handle to Bass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio low audio timeholder;
pause(audio);
pausedTime = get(handles.dispTime,'String');
pausedTime=str2num(pausedTime);
delete(timeholder) %gets rid of the line tracking time on graph 

low=yAudio;  %name low with yAudio
for b=pausedTime+1:length(yAudio) %use a loop to manipulate the two columns of yAudio
    low(b,1)=(0.9*low(b-1,1))+yAudio(b,1);
    low(b,2)=(0.9*low(b-1,2))+yAudio(b,2);
end
yAudio=low;  


% --- Executes on button press in Insert1.
function Insert1_Callback(hObject, eventdata, handles)
% hObject    handle to Insert1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global audio yAudio fsAudio audio1 audio2 yAudio1 fsAudio1 audio3 time volNum vol audio4 audio5 audio6 audio7 audio8 audio9;
set(handles.Insert1,'string','SELECTED','BackgroundColor','green','enable','off');
if get(handles.Insert9,'BackgroundColor')==[0 1 0];
    color = get(handles.load9,'BackgroundColor');
    set(handles.Insert9,'string',audio9,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert2,'BackgroundColor')==[0 1 0];
    color = get(handles.load2,'BackgroundColor');
    set(handles.Insert2,'string',audio2,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert3,'BackgroundColor')==[0 1 0];
    color = get(handles.load3,'BackgroundColor');
    set(handles.Insert3,'string',audio3,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert4,'BackgroundColor')==[0 1 0];
    color = get(handles.load4,'BackgroundColor');
    set(handles.Insert4,'string',audio4,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert5,'BackgroundColor')==[0 1 0];
    color = get(handles.load5,'BackgroundColor');
    set(handles.Insert5,'string',audio5,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert7,'BackgroundColor')==[0 1 0];
    color = get(handles.load7,'BackgroundColor');
    set(handles.Insert7,'string',audio7,'Backgroundcolor',color,'enable','on');
    pause(audio);
elseif get(handles.Insert6,'BackgroundColor')==[0 1 0];
    color = get(handles.load6,'BackgroundColor');
    set(handles.Insert6,'string',audio6,'Backgroundcolor',color,'enable','on');
    pause(audio);
else get(handles.Insert8,'BackgroundColor')==[0 1 0];
    color = get(handles.load8,'BackgroundColor');
    set(handles.Insert8,'string',audio8,'Backgroundcolor',color,'enable','on');
    pause(audio);
end
yAudio = yAudio1;
fsAudio = fsAudio1;

if get(handles.mono,'Value') == 1.0;
    right = flipud(yAudio);
    left = yAudio;
    yAudio = [left right];
end

if get(handles.stereo,'Value') == 1.0;
yAudio = yAudio1;
fsAudio = fsAudio1;
end

set(handles.dispAudioFileName,'String',audio1);

cla reset;

axes(handles.axes1);

volNum = get(handles.dispVol,'String');
volNum = str2num(volNum); 

if isnumeric(volNum)==0;
    vol = 1;
else isnumeric(volNum)==1;
    vol = volNum;
end

time=(1/44100)*length(yAudio1);
t=linspace(0,time,length(yAudio1));
plot(t,vol*yAudio1);hold on;
xlabel('Time(sec)');
ylabel('Relative Signal Strength');
axis auto;



function newFileName_Callback(hObject, eventdata, handles)
% hObject    handle to newFileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of newFileName as text
%        str2double(get(hObject,'String')) returns contents of newFileName as a double


% --- Executes during object creation, after setting all properties.
function newFileName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to newFileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in fileType.
function fileType_Callback(hObject, eventdata, handles)
% hObject    handle to fileType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns fileType contents as cell array
%        contents{get(hObject,'Value')} returns selected item from fileType


% --- Executes during object creation, after setting all properties.
function fileType_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fileType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yAudio fsAudio startTime endTime
fileName = uiputfile({'*.mp4';'*.au';'*.wav'},'Save as'); %opens a dialogue box for saving
yAudioWithTime= yAudio((startTime*fsAudio):(endTime*fsAudio)); %gets the most recent start and end times
audiowrite(fileName,yAudioWithTime,fsAudio); %gets the most recent yAudio and fsAudio 
