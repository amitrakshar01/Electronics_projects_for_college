% LAB 6 A
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% ================================
N1=64;
n1=0:N1-1;
xn1=cos(0.25*pi*n1);    %xn1 is a row vector
wn1=exp(-1i*2*pi/N1)*ones(N1,1); %column vector
m=1;
for k=1:N1
    XK1(m)=xn1*(wn1.^(n1'*k));
    m=m+1;
end
X1=abs(XK1);
figure(1)
subplot(2,1,1)
plot(n1/N1,X1/max(X1));
grid;
xlabel('Normalized Freq');
ylabel('Amplitude');
legend('N=64');
title('DFT');
N2=512;
n2=0:N2-1;
xn2=cos(0.25*pi*n2);    %xn1 is a row vector
wn2=exp(-1i*2*pi/N2)*ones(N2,1); %column vector
m=1;

xn3=ifft(XK3);
N3=length(xn3);
n3=0:N3-1;
figure(3)
subplot(2,1,1)
stem(n3(1:60),xn3(1:60));
xlabel('n');
ylabel('Amplitude');
title('Input Signal');

for k=1:N2
    XK2(m)=xn2*(wn2.^(n2'*k));
    m=m+1;
end
X2=abs(XK2);
figure(1)
subplot(2,1,2)
plot(n2/N2,X2/max(X2));
grid;
xlabel('Normalized Freq');
ylabel('Amplitude');
legend('N=512');
title('DFT');

XK3 = fft(xn1, N1);
X3=abs(XK3);
figure(2)
subplot(2,1,1)
plot(n1/N1,X3/max(X3));
grid;
xlabel('Normalized Freq');
ylabel('Amplitude');
legend('N=64');
title('FFT');
XK4 = fft(xn2, N2);
X4=abs(XK4);
figure(2)
subplot(2,1,2)
plot(n2/N2,X4/max(X4));
grid;
xlabel('Normalized Freq');
ylabel('Amplitude');
legend('N=512');
title('FFT');

xn3=ifft(XK3);
N3=length(xn3);
n3=0:N3-1;
figure(3)
subplot(2,1,1)
stem(n3(1:60),xn3(1:60));
xlabel('n');
ylabel('Amplitude');
title('Input Signal');

xn4=ifft(XK4);
N4=length(xn4);
n4=0:N4-1;
figure(3)
subplot(2,1,2)
stem(n4(1:60),xn4(1:60));
xlabel('n');
ylabel('Amplitude');
title('Input Signal');