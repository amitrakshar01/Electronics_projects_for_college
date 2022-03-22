% LAB 4 D
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% ================================
n=0:100;
N=100;
s=cos(0.25*pi*n);
w=rand(1,N+1)-0.5;
y=s+w;
ryy=conv(y,fliplr(y));
rww=conv(w,fliplr(w));
rsw=conv(s,fliplr(w));
ryw=conv(y,fliplr(w));
k=-30:30;
figure(1)
subplot(5,1,1);
stem(n(1:61),s(1:61));
xlabel('n');
ylabel('Amplitude');
legend('s[n]');
subplot(5,1,2);
stem(k,ryy(70:130));
xlabel('lag index k');
ylabel('Amplitude');
legend('r_y_y');
subplot(5,1,3);
stem(k,rww(70:130));
xlabel('lag index k');
ylabel('Amplitude');
legend('r_w_w');
subplot(5,1,4);
stem(k,rsw(70:130));
xlabel('lag index k');
ylabel('Amplitude');
legend('r_s_w');
subplot(5,1,5);
stem(k,ryw(70:130));
xlabel('lag index k');
ylabel('Amplitude');
legend('r_y_w');