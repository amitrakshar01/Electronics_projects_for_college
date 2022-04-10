% LAB 6 B
% Chirantan Ganguly (420)
% Amitrakshar Sanyal (422)
% =========================
 x=[1 2 0 1];
 h=[2 2 1 1];
 L1=length(x);
 L2=length(h);
 YC=zeros(1,L1);
 h_toprow=[h(1) h(L2:-1:2)];
 temp=0;
for k=1:L1
    h_shift=circshift(h_toprow', k-1)';
    temp=x.*h_shift;
    YC(k)=sum(temp);
end
figure(1)
n=0:L1-1;
stem(n,YC);
grid;
xlabel('n');
ylabel('Amplitude');
title('Circular Convolution');

%zero padding
xe=[x zeros(1,3)];
he=[h, zeros(1,3)];
L1=length(xe);
 L2=length(he);
 YL=zeros(1,L1);
 he_toprow=[he(1) he(L2:-1:2)];
 temp=0;
for k=1:L1
    he_shift=circshift(he_toprow', k-1)';
    temp=xe.*he_shift;
    YL(k)=sum(temp);
end
figure(2)
n=0:L1-1;
stem(n,YL);
grid;
xlabel('n');
ylabel('Amplitude');
title('Extended Circular Convolution');

Y_linear=conv(x,h);
n2=0:length(Y_linear)-1;
figure(3)
stem(n2,Y_linear)
grid;
xlabel('n');
ylabel('Amplitude');
title('Convolution');

L6=length(xe)+length(he)-1;
Xe=fft(xe,L6);
He=fft(he,L6);
y1=ifft(Xe.*He);
n3=0:L6-1;
figure(4);
stem(n3,y1)
grid;
xlabel('n');
ylabel('Amplitude');
title('DFT based Linear Convolution');