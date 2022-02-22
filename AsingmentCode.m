%Initialzation Noise and Signal
clear all
close all
load('noise_2021.mat')
load("OrgSingal.mat")
newSignal = noise + signal;
fft_newSingal = abs(fft(newSignal));
plot(fft_newSingal)

%Filter Design

