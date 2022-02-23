function complexExponential(amplitude,real_pow,img_pow,length)
  %Complex Exponential Sequence
  c=real_pow+img_pow*i;
  n=0:(length);
  y=amplitude*exp(c*n);
  a=real(y);
  b=imag(y);
  figure(3)
  subplot(2,1,1)
  stem(n,a);
  grid;
  ylabel('x[n]'); 
  xlabel('Time Index (n)');
  title("Real part");
  subplot(2,1,2)
  stem(n,b);
  grid;
  ylabel('x[n]'); 
  xlabel('Time Index (n)');
  title("Imaginary part");
  end