function exponentialSequence(alpha,length)
  n=0:(length);
  x=alpha.^n;
  figure(5);
  stem(n,x);
  grid;
  ylabel('x[n]'); 
  xlabel('Time Index (n)');
  title("Exponential sequence");
  end