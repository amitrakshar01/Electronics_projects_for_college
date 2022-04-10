% LAB 2 C
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% ================================
len=40;
n=0:len-1;
% Clean signal and Noisy signal plot
s=(2*n).^(0.9.^n);
w=-0.5+rand(1,len);
x=s+w;
figure(1)
plot(n,w,'b',n,s,'r',n,x,'k');
xlabel('Time Index')
ylabel('amplitude')
legend('w[n]','s[n]','x[n]');
title('corrupted signal');
M=3;
b=ones(1,M)/M;
y=filter(b,1,x);
figure(2)
plot(n,s,'b',n,y,'r');
legend('s[n]','y[n]');
xlabel('Time Index');
ylabel('Amplitude');
title('Moving avg for M=3');

M=10;
b=ones(1,M)/M;
y=filter(b,1,x);
figure(3)
plot(n,s,'b',n,y,'r');
legend('s[n]','y[n]');
xlabel('Time Index');
ylabel('Amplitude');
title('Moving avg for M=10');

% IIR Filter y(n)