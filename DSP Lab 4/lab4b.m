% LAB 4 B
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% ================================
%Autocorrelation and crosscorrelation
x = [0,0,0,-4,5,1,-2,-3,0,2];
y=[0,0,0,6,-3,-1,0,8,7,-2];
w=[0,0,0,3,2,2,-1,0,-2,5];
r1 = convn(x,fliplr(x));
r2 = convn(y,fliplr(y));
r3 = convn(w,fliplr(w));
figure(1)
N=length(x);
lag=-(N-1):(N-1);
stem(lag,r1)
xlabel('lag index')
ylabel('amplitude')
title('autocorrelation of x')
figure(2)
stem(lag,r2)
xlabel('lag index')
ylabel('amplitude')
title('autocorrelation of y')
figure(3)
stem(lag,r3)
xlabel('lag index')
ylabel('amplitude')
title('autocorrelation of w')
%====================================
%CROSS Correlation
r1 = convn(x,fliplr(y));
r2 = convn(x,fliplr(w));
figure(4);