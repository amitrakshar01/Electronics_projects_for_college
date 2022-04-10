% LAB 11 A
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% =========================
Fs=8000;
Fpass=800;
Fstop=1000;
Rp=0.5;
Rs=30;
wp=2*pi*Fpass/Fs;
ws=2*pi*Fstop/Fs;

[N1,wc1]=buttord(wp,ws,Rp,Rs,'s');
[B1,A1]=butter(N1,wc1,'s');
w=[0:50:5000*pi];
[h,w]=freqs(B1,A1);
figure(1)
plot(w/(2*pi),20*log10(abs(h)))
grid;
xlabel('Frequency in Hz');
ylabel('Amplitude');
title('Gain-Frequency response of Butterworth Filter');
N1
fc1=wc1/(2*pi)

%Chebyshev
[N2,wn1]=cheb1ord(wp,ws,Rp,Rs,'s');
[B2,A2]=cheby1(N2,Rp,wn1,'s');
N2
[h2,w]=freqs(B2,A2,w);
% %.......................................................
[N3,wn2]=cheb2ord(wp,ws,Rp,Rs,'s');
[B3,A3]=cheby2(N3,Rs,wn2,'s');
[h3,w]=freqs(B3,A3,w);
figure(2)
plot(w/(2*pi),20*log10(abs(h2)),'b-',(w/(2*pi)),20*log10(abs(h3)),'r-');
grid;
xlabel('Frequency wn in Hz');
ylabel('Amplitude');
legend('Cheby Type 1', 'Cheby Type 2');
title('Gain-Frequency Response of Chebyshev Filter');
N2
N3

%Elliptical
[N4,wn3]=ellipord(wp,ws,Rp,Rs,'s');
[B4,A4]=ellip(N4,Rp,Rs,wn3,'s');
[h4,w]=freqs(B4,A4);
figure(4)
plot(w/(2*pi),20*log10(abs(h4)));
grid;
xlabel('Frequency wn in Hz');
ylabel('Amplitude');
title('Gain-Frequency Response of Elliptic Filter');