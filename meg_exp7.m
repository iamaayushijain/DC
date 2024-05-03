%Exp7-Error detection using lbc
%Name-Meghna Malasi
%Roll No-2022UCS1611
clc;
clear all;
close all; 
G=[1 0 0 1 0 1;
   0 1 0 0 1 1;
   0 0 1 1 1 1];
[k,n]=size(G);
m=dec2bin(0:(2^k)-1)-'0';
c=mod((m*G),2);
disp(c)

H=[1 0 1 1 0 0;
   0 1 1 0 1 0;
   1 1 1 0 0 1];
r=[ 0 0 0 0 1 0];
disp(H.');
s=mod((r*H.'),2);
disp(s);
error_pos = find(ismember(H.', s, 'rows'));
if isempty(error_pos)
    disp('No error detected.');
    Y = r;
else
    disp(['Error detected at bit ' num2str(error_pos) '.']);
    Y = r;
    Y(error_pos) = mod(Y(error_pos) + 1, 2);
    disp('Error corrected.');
end

disp('Corrected codeword:');
disp(Y);
 