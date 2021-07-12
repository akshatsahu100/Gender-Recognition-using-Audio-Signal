clear all;
close all;
clc;

%% Create a recorder object
fs = 16000; 
recorder = audiorecorder(16000,8,1);

%% Record user's voice for 5 sec
disp('Please Record your voice');
drawnow();
recordblocking(recorder,5);
play(recorder);
data = getaudiodata(recorder);
plot(data);
figure;

%% Data processing

% -------- plot fft ------------- % 
F = fft(data);
plot(real(F));

% -------- Technique 1 : Maximum frequency component of the person ------- %
m=max(real(F));
xPitch=find(real(F)==m,1);
PersonPitch = 0.2*xPitch;

% ------- Technique 2 : frequency calc using zero crossings method ------%
len = length(data);
zc_count = 0;
for i=1:len-1
    if(data(i)<0 && data(i+1)>0)
        zc_count = zc_count + 1;
    end
end
zc_freq = fs*zc_count*0.5/len;


%% comparison and disply block
disp('Frequency calculated by Highest frequency component menthod : ');
disp(PersonPitch);
disp('Frequency calculated by zero crossing menthod : ');
disp(zc_freq);

if(zc_freq < 170)
    disp('It is a male voice with frequency : ');
    disp(zc_freq);
else
    disp('It is a female voice with frequency : ');
    disp(zc_freq);
end
