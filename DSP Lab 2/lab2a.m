% LAB 2 A
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% ================================
len=20;
n=0:len-1;
% Clean signal and Noisy signal plot
s=(2*n).^(0.9.^n);
w=-0.5+rand(1,len);
x=s+5*w;
figure(1)
subplot(2,1,1);
stem(n,s)
grid;
ylabel('s[n]');
xlabel('Time Index (n)');
title('Clean Signal');
subplot(2,1,2);
stem(n,x)
grid;
ylabel('x[n]');
xlabel('Time Index (n)');
title('Noise Corrupted Signal');
% ================================
%Ensemble Average Filter
y1=0;
y2=0;
M1=10;
M2=50;
for i=1:max(M1,M2);
    w2=5*(rand(1,len)-0.5);
    x=s+w2;
    if(i<M1)
        y1=y1+x;
    end
    y2=y2+x;
end
y1=y1/M1;
y2=y2/M2;
figure(2);
subplot(2,1,1);
stem(n,y1);
grid;
ylabel('y1[n]');
xlabel('Time Index (n)');
title('Ensemble Average for M=10');
subplot(2,1,2);
stem(n,y2);
grid;
ylabel('y21[n]');
xlabel('Time Index (n)');
title('Ensemble Average for M=50');
       