%Initialzation Noise and Signal
clear all
close all
load('noise_2021.mat')
load('OrgSingal.mat')
newSignal = noise + signal;
fft_signal = abs(fft(signal));
fft_newSignal = abs(fft(newSignal));
plot(fft_newSignal)
%boundrt indentifer
length = length(newSignal);
disp(length)
% slop = zeros(1,length,"double");
% for counter = 1:2:length
%     slop(counter) = newSignal(counter)-newSignal(counter+1);
%     disp(counter)
%     disp(slop(counter));   
% end
slop = diff(newSignal);
abs_slop=abs(slop);
%Filter Design

