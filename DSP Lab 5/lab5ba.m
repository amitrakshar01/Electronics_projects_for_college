% LAB 5 B
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% ================================
b=0.15*[1 0 -1];
a=[1 -0.5 0.75];
w=[0:0.001:2*pi];
H=freqz(b,a,w);
magH=abs(H);
phaH=angle(H)*180/pi;
figure(1)
zplane(b,a)
figure(2)
subplot(2,1,1);
plot(w/(2*pi),magH);
grid;
xlabel('Normalized Frequency');
ylabel('Magnitude');subplot(2,1,2)
plot(w/(2*pi),phaH);
grid;
axis([0,1,-180,180]);
xlabel('Normalized Freq');
ylabel('Phase in degrees');
title('Phase Response of the System');
title('Freq Response of the system');

phi = phasedelay(b,a,w);
gd = grpdelay(b,a,w);
figure(3)
subplot(2,1,1)
plot(w/(2*pi),phi);
grid;
axis([0,0.5,-150,10]);
xlabel('Normalized Freq');
ylabel('Phase delay in Samples');
subplot(2,1,2)
plot(w/(2*pi),gd);
grid;
axis([0,0.5,0,8]);
xlabel('Normalized Freq');
ylabel('Group delay in Samples');