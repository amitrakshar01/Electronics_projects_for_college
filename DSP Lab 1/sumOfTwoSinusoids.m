function sumOfTwoSinusoids(freq1,freq2,length)
  %Sinusoidal Sequemce
  n=0:(length);
  x1=cos(freq1*n);
  x2=cos(freq2*n);
  x=x1+x2;
  figure(4)
  subplot(3,1,1);
  stem(n,x1);
  grid;
  ylabel('x1[n]'); 
  xlabel('Time Index (n)');
  title("First Sinusoid");
  subplot(3,1,2);
  stem(n,x2);
  grid;
  ylabel('x2[n]'); 
  xlabel('Time Index (n)');
  title("Second Sinusoid");
  subplot(3,1,3);
  stem(n,x);
  grid;
  ylabel('x[n]'); 
  xlabel('Time Index (n)');
  title("Summed Sinusoid");