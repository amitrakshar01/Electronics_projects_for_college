% LAB 3 A
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% ================================
%Sampling of sinusoid
t=0:0.001:0.1;
n=0:100;
F=100;
fs=1000;
f=F/fs;
S=5*cos(2*pi*F*t);
sampled_S=5*cos(2*pi*f*n);
figure(1)
subplot(2,1,1);
plot(t,S);
ylabel('x(t)');
xlabel('t');
title('Continuous time Sinusoid');
subplot(2,1,2);
stem(n,sampled_S);
ylabel('x[n]');
xlabel('n');
title('Discrete time Sinusoid');

% Aliasing

F1=1100;
F2=2100;
F3=3100;
f1=F1/fs;
f2=F2/fs;
f3=F3/fs;
S1=5*cos(2*pi*f1*n);
S2=5*cos(2*pi*f2*n);
S3=5*cos(2*pi*f3*n);
figure(2)
subplot(4,1,1)
plot(t,S);
ylabel('x(t)');
xlabel('Time');
title('Original Signal');
subplot(4,1,2)
plot(t,S1);
ylabel('x1(t)');
xlabel('Time');
title('F1=1100 Hz');
subplot(4,1,3)
plot(t,S2);
ylabel('x2(t)');
xlabel('Time');
title('F1=2100 Hz');
subplot(4,1,4)
plot(t,S3);
ylabel('x3(t)');
xlabel('Time');
title('F1=3100 Hz');