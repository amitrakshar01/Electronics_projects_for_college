% LAB 8
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% =========================
num=[3 -4];
den=[1 -3.5 1.5];
[r,p,k]=residuez(num,den);
figure(1)
zplane(num,den);
grid;
title('Pole Zero plot of H(z)');
N=200;
[h, T]=impz(num,den,N);
h';
T';
figure(2)
subplot(2,1,1)
stem(T,h);
grid;
title('Impulse Response of H(z)');

%Convergent
num1=[1 -4/3];
den1=[-1 2.5/3 -0.5/3];

[h1, T1]=impz(num1,den1,N);
h1';
T1';
subplot(2,1,2)
stem(T1,h1);
grid;
title('Convergent Impulse Response');
figure(3)
zplane(num1,den1);
grid;
title('Pole Zero plot of Stable System');
N=200;
%Lab 8c
w=0:0.001:2*pi;
H=freqz(num,den,w);
magH=abs(H);
H1=freqz(num1,den1,w);
magH1=abs(H);
figure(4)
subplot(2,1,1)
plot(w/(2*pi),magH);
grid;
xlabel('Normalized Frequency');
ylabel('Amplitude');
title('Frequency Response of the Unstable System');
subplot(2,1,2)
plot(w/(2*pi),magH1);
grid;
xlabel('Normalized Frequency');
ylabel('Amplitude');
title('Frequency Response of the Stable System');

