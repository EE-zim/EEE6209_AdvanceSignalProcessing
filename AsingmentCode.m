%Initialzation Noise and Signal
clear all
close all
load('noise_2021.mat');
load('OrgSingal.mat');
newSignal = noise + signal;
fft_newSignal = abs(fft(newSignal));
plot(fft_newSignal)
%boundrt indentifer
length = length(newSignal);
disp(length)
slop = 0;
for counter = 1:2:length
    slop(length/2) = newSignal(counter-1)-newSignal(counter);
    %disp(counter)
    disp(slop(length/2));
    
end
    
%Filter Design

