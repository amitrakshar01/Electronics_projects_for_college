clear all;
fp=1500;
fs=2000;
delta_f=abs(fp-fs);
Fs=8000;
normalized_passband_frequency=(2*pi*fp)/Fs;
normalized_stopband_frequency=(2*pi*fs)/Fs;
normalized_delta_w=(2*pi*delta_f)/Fs;
w_c=(normalized_passband_frequency+normalized_stopband_frequency)/2;
M=round((0.92*pi)/normalized_delta_w);
N=2*M+1;


for n=1:N
    if n==M+1
        h1(n)=w_c/pi;
    else
        h1(n)=sin(w_c*(n-1-M))/(pi*(n-1-M));
    end
end

for n=1:N
    w(n)=1;
end
for m=1:N
    h_t(m)=h1(m).*w(m);
end

figure(1)
m=1:2*M+1;
plot(m,h_t);
axis([0,15,-0.5,max(h_t)]);
grid;
xlabel('n');
ylabel('Causal Filter');
figure(2)
[H,F]=freqz(h_t,1,256,Fs);
magH=abs(H)/max(abs(H));
L=20*log10(magH);
plot(F,L);
grid;
xlabel('Freq in Hertz');
ylabel('Causal Filter');