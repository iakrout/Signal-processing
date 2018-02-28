
function varargout =main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 13-Feb-2018 03:22:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

a=imread('Enit.png');
axes(handles.axes1);
imshow(a);

function fs_Callback(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fs as text
%        str2double(get(hObject,'String')) returns contents of fs as a double


% --- Executes during object creation, after setting all properties.
function fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in filtertype.
function filtertype_Callback(hObject, eventdata, handles)
% hObject    handle to filtertype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns filtertype contents as cell array
%        contents{get(hObject,'Value')} returns selected item from filtertype


% --- Executes during object creation, after setting all properties.
function filtertype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filtertype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in lp.
function lp_Callback(hObject, eventdata, handles)
% hObject    handle to lp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of lp


% --- Executes on button press in hp.
function hp_Callback(hObject, eventdata, handles)
% hObject    handle to hp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hp


% --- Executes on button press in bp.
function bp_Callback(hObject, eventdata, handles)
% hObject    handle to bp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bp


% --- Executes on button press in bs.
function bs_Callback(hObject, eventdata, handles)
% hObject    handle to bs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bs



function f1_Callback(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f1 as text
%        str2double(get(hObject,'String')) returns contents of f1 as a double


% --- Executes during object creation, after setting all properties.
function f1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f2_Callback(hObject, eventdata, handles)
% hObject    handle to f2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f2 as text
%        str2double(get(hObject,'String')) returns contents of f2 as a double


% --- Executes during object creation, after setting all properties.
function f2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f3_Callback(hObject, eventdata, handles)
% hObject    handle to f3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f3 as text
%        str2double(get(hObject,'String')) returns contents of f3 as a double


% --- Executes during object creation, after setting all properties.
function f3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fc1_Callback(hObject, eventdata, handles)
% hObject    handle to fc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fc1 as text
%        str2double(get(hObject,'String')) returns contents of fc1 as a double


% --- Executes during object creation, after setting all properties.
function fc1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fc2_Callback(hObject, eventdata, handles)
% hObject    handle to fc2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fc2 as text
%        str2double(get(hObject,'String')) returns contents of fc2 as a double


% --- Executes during object creation, after setting all properties.
function fc2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fc2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startbtn.
function startbtn_Callback(hObject, eventdata, handles)
% hObject    handle to startbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%str2double(get(fc1,'String'))
%set(text15, 'String', get(handles.fc1,'String'))

f1=str2double(get(handles.f1,'String'));
f2=str2double(get(handles.f2,'String'));
f3=str2double(get(handles.f3,'String'));

fs=str2double(get(handles.fs,'String'));
D=str2double(get(handles.d,'String'));
t=(0:1/fs:D);

x=sin(2*pi*f1*t)+sin(2*pi*f2*t)+sin(2*pi*f3*t);

N=length(x);

forder =str2double(get(handles.forder,'String'))
rp =str2double(get(handles.rpn,'String'))
rs =str2double(get(handles.rsn,'String'))
r =str2double(get(handles.rn,'String'))

fc1=str2double(get(handles.fc1,'String'));
fc2=str2double(get(handles.fc2,'String'));

fcn1 = fc1/(fs/2);
fcn2 = fc2/(fs/2);

W=[fcn1 fcn2];


%% BUTTERWORTH FILTER, done
if get(handles.filtertype,'Value')==1
        %figure;
        if get(handles.lp, 'Value')==1
            %subplot(411);
            [B,A] = butter(forder,fcn1,'low');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end


        if get(handles.hp, 'Value')==1
            %subplot(412);
            [B,A] = butter(forder,fcn1,'high');
            y=filter(B,A,x);
           %axes(handles.osc);
            plot(y);
        end

        if get(handles.bp, 'Value')==1
            %subplot(413);
            [B,A] = butter(forder,W,'bandpass');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end

        if get(handles.bs, 'Value')==1
            %subplot(414);
            [B,A] = butter(forder,W,'stop');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end
end


%% Elliptic FILTER, done
if get(handles.filtertype,'Value')==2
        %figure;
        if get(handles.lp, 'Value')==1
            %subplot(411);
            [B,A] = ellip(forder,rp,rs,fcn1,'low');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end


        if get(handles.hp, 'Value')==1
           % subplot(412);
            [B,A] = ellip(forder,rp,rs,fcn1,'high');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end

        if get(handles.bp, 'Value')==1
          %  subplot(413);
            [B,A] = ellip(forder,rp,rs,W,'bandpass');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end

        if get(handles.bs, 'Value')==1
           % subplot(414);
            [B,A] = ellip(forder,rp,rs,W,'stop');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end
end

%% Chebycheve1
if get(handles.filtertype,'Value')==3
        %figure;
        if get(handles.lp, 'Value')==1
           % subplot(411);
            [B,A] = cheby1(forder,r,fcn1,'low');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end


        if get(handles.hp, 'Value')==1
           % subplot(412);
            [B,A] = cheby1(forder,r,fcn1,'high');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end

        if get(handles.bp, 'Value')==1
           % subplot(413);
            [B,A] = cheby1(forder,r,W,'bandpass');
            y=filter(B,A,x);
            axes(handles.osc);
          plot(y);
        end

        if get(handles.bs, 'Value')==1
            %subplot(414);
            [B,A] = cheby1(forder,r,W,'stop');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end
end

%% Chebycheve2
if get(handles.filtertype,'Value')==4
        %figure;
        if get(handles.lp, 'Value')==1
           % subplot(411);
            [B,A] = cheby2(forder,r,fcn1,'low');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end


        if get(handles.hp, 'Value')==1
           % subplot(412);
            [B,A] = cheby2(forder,r,fcn1,'high');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end

        if get(handles.bp, 'Value')==1
           % subplot(413);
            [B,A] = cheby2(forder,r,W,'bandpass');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end

        if get(handles.bs, 'Value')==1
           % subplot(414);
            [B,A] = cheby2(forder,r,W,'stop');
            y=filter(B,A,x);
            axes(handles.osc);
            plot(y);
        end
end


function forder_Callback(hObject, eventdata, handles)
% hObject    handle to forder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of forder as text
%        str2double(get(hObject,'String')) returns contents of forder as a double


% --- Executes during object creation, after setting all properties.
function forder_CreateFcn(hObject, eventdata, handles)
% hObject    handle to forder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rpn_Callback(hObject, eventdata, handles)
% hObject    handle to rpn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rpn as text
%        str2double(get(hObject,'String')) returns contents of rpn as a double


% --- Executes during object creation, after setting all properties.
function rpn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rpn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rsn_Callback(hObject, eventdata, handles)
% hObject    handle to rsn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rsn as text
%        str2double(get(hObject,'String')) returns contents of rsn as a double


% --- Executes during object creation, after setting all properties.
function rsn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rsn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rn_Callback(hObject, eventdata, handles)
% hObject    handle to rn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rn as text
%        str2double(get(hObject,'String')) returns contents of rn as a double


% --- Executes during object creation, after setting all properties.
function rn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

fs =str2double(get(handles.fs,'String'))

forder =str2double(get(handles.forder,'String'))
rp =str2double(get(handles.rpn,'String'))
rs =str2double(get(handles.rsn,'String'))
r =str2double(get(handles.rn,'String'))

fc1=str2double(get(handles.fc1,'String'));
fc2=str2double(get(handles.fc2,'String'));

fcn1 = fc1/(fs/2);
fcn2 = fc2/(fs/2);

W=[fcn1 fcn2];


%% BUTTERWORTH FILTER, done
if get(handles.filtertype,'Value')==1
        if get(handles.lp, 'Value')==1
     figure;
            [B,A] = butter(forder,fcn1,'low');
           
            freqz(B,A);
        end


        if get(handles.hp, 'Value')==1
            figure;
            [B,A] = butter(forder,fcn1,'high');freqz(B,A);
        end

        if get(handles.bp, 'Value')==1
            figure;
            [B,A] = butter(forder,W,'bandpass');freqz(B,A);
        end

        if get(handles.bs, 'Value')==1
            figure;
            [B,A] = butter(forder,W,'stop');freqz(B,A);
        end
end


%% Elliptic FILTER, done
if get(handles.filtertype,'Value')==2
        if get(handles.lp, 'Value')==1
            figure;
            [B,A] = ellip(forder,rp,rs,fcn1,'low');freqz(B,A);
        end


        if get(handles.hp, 'Value')==1
            figure;
            [B,A] = ellip(forder,rp,rs,fcn1,'high');freqz(B,A);
        end

        if get(handles.bp, 'Value')==1
            figure;
            [B,A] = ellip(forder,rp,rs,W,'bandpass');freqz(B,A);
        end

        if get(handles.bs, 'Value')==1
            figure;
            [B,A] = ellip(forder,rp,rs,W,'stop');freqz(B,A);
        end
end

%% Chebycheve1
if get(handles.filtertype,'Value')==3
        if get(handles.lp, 'Value')==1
            figure;
            [B,A] = cheby1(forder,r,fcn1,'low');freqz(B,A);
        end


        if get(handles.hp, 'Value')==1
            figure;
            [B,A] = cheby1(forder,r,fcn1,'high');freqz(B,A);
        end

        if get(handles.bp, 'Value')==1
            figure;
            [B,A] = cheby1(forder,r,W,'bandpass');freqz(B,A);
        end

        if get(handles.bs, 'Value')==1
            figure;
            [B,A] = cheby1(forder,r,W,'stop');freqz(B,A);
        end
end

%% Chebycheve2
if get(handles.filtertype,'Value')==4
        if get(handles.lp, 'Value')==1
            figure;
            [B,A] = cheby2(forder,r,fcn1,'low');freqz(B,A);
        end


        if get(handles.hp, 'Value')==1
            figure;
            [B,A] = cheby2(forder,r,fcn1,'high');freqz(B,A);
        end

        if get(handles.bp, 'Value')==1
            figure;
            [B,A] = cheby2(forder,r,W,'bandpass');freqz(B,A);
        end

        if get(handles.bs, 'Value')==1
            figure;
            [B,A] = cheby2(forder,r,W,'stop');freqz(B,A);
        end
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f1=str2double(get(handles.f1,'String'));
f2=str2double(get(handles.f2,'String'));
f3=str2double(get(handles.f3,'String'));

fs=str2double(get(handles.fs,'String'));
D=str2double(get(handles.d,'String'));
t=(0:1/fs:D);
x=sin(2*pi*f1*t)+sin(2*pi*f2*t)+sin(2*pi*f3*t);
axes(handles.osc);
 plot(x);
