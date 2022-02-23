function squareSequence(freq,length)
  %Square Sequence
  pkg load signal;
  n=0:length;
  x1=10*square(freq*n);
  x2=5*(1+square(freq*n));
  figure(6)
  subplot(2,1,1)
  stem(n,x1)
  grid;
  ylabel('x1[n]'); 
  xlabel('Time Index (n)');
  title("Polar Plot");
  subplot(2,1,2)
  stem(n,x2);
  grid;
  ylabel('x2[n]'); 
  xlabel('Time Index (n)');
  title("Unipolar Plot");
  end