% LAB 9
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% =========================
N=100;
num=[1];
den=[1 -1.8456 0.849585];
[h,T]=impz(num,den,N);
figure(1)
subplot(2,1,1)
stem(T,h)
grid;
xlabel('n');
ylabel('Amplitude');
title('Impulse Response');

num1=[1];
den1=[1 -1.85 0.84];
[h1,T]=impz(num1,den1,N);
figure(1)
subplot(2,1,2)
stem(T,h1)
grid;
xlabel('n');
ylabel('Amplitude');
title('Impulse Response');

figure(2)
subplot(2,1,1);
zplane(num,den);
grid;
title('Pole zero plot of Original System');
subplot(2,1,2);
zplane(num1,den1);
grid;
title('Pole zero plot of Quantized System');