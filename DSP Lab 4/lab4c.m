% LAB 4 C
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% ================================
%Convolution
n1=0:4;
n2=0:3;
n3=0:7;
x=[-2,0,1,2,3];
h=[1,2,0,-1];
y = convn(x,h);

figure(1)
subplot(3,1,1)
stem(n1,x);
xlabel('n');
ylabel('Amplitude');
legend('x');
title('Input Signal');
subplot(3,1,2)
stem(n2,h);
xlabel('lag index k');
ylabel('Amplitude');
legend('h');
title('Impulse Response');
subplot(3,1,3)
stem(n3,y);
xlabel('lag index k');
ylabel('Amplitude');
legend('y');
title('Output Signal');
