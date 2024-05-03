%Exp5- Verification of Sampling Theorem
%Name-Meghna Malasi 
%Roll No-2022UCS1611
clc;
clear all;
close all;
Am=2;
fm=10;
t=0:0.01:1;
xt=Am*sin(2*pi*t*fm);
%% fs<2fm Under sampling
fs1=15;
n1=0:1/fs1:1;
xn1=Am*sin(2*pi*fm*n1);
%% fs=2fm 
fs2=20;
n2=0:1/fs2:1;
xn2=Am*sin(2*pi*fm*n2);
%% fs>2fm
fs3=30;
n3=0:1/fs3:1;
xn3=Am*sin(2*pi*fm*n3);

subplot(2,2,1)
plot(t,xt);
title("Input Signal")
subplot(2,2,2)
stem(n1,xn1);
title("Under Sampling")
subplot(2,2,3)
stem(n2,xn2);
title("Nyquist Rate")
subplot(2,2,4)
stem(n3,xn3);
title("Over Sampling") 





 