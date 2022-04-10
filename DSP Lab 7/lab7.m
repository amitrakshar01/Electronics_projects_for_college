% LAB 7
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% =========================
clear all
N=128;
w=rand(1,N)-0.5;
n=0:N-1;
s=2*n.*(0.9.^n);
x=s+w;
M=10;
h=ones(1,M)/M;
L=4;
y=fftfilt(h,x,4);
figure(1)
plot(n,x,'r-',n,y,'b-',n,s,'k-');
grid;
xlabel('n');
ylabel('Amplitude');
legend('Input Noisy Signal','Filtered Output');
title('MA Filtering by overlap add method');