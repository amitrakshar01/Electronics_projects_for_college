function lab3a
  %Sampling of Sinusoid
  t=0:0.001:0.1;
  n=0:100;
  F=100;
  fs=1000;
  f=F/fs;
  S=5*cos(2*pi*F*t);
  sampled_S=5*cos(2*pi*f*n);
  figure(1);
  subplot(2,1,1);
  plot(t,S);
  grid;
  ylabel('x(t)'); 
  xlabel('Time');
  title("Continuous time Sinusoid");
  subplot(2,1,2);
  stem(n,sampled_S);
  grid;
  ylabel('x[n]'); 
  xlabel('Time Index (n)');
  title("Discrete time Sinusoid");
  
  %Aliasing
  F1=1100;
  F2=2100;
  F3=3100;
  f1=F1/fs;
  f2=F2/fs;
  f3=F3/fs;
  S1=5*cos(2*pi*f1*n);
  S2=5*cos(2*pi*f2*n);
  S3=5*cos(2*pi*f3*n);
  figure(2);
  subplot(3,1,1);
  plot(t,S1);
  grid;
  ylabel('x1(t)'); 
  xlabel('Time');
  title("F=1100 Hz");
  subplot(3,1,2);
  plot(t,S2);
  grid;
  ylabel('x2[n]'); 
  xlabel('Time');
  title("F2=2100 Hz");
  subplot(3,1,3);
  plot(t,S3);
  grid;
  ylabel('x3[n]'); 
  xlabel('Time');
  title("F3=3100 Hz");
  prefilter_freq=fs/2;
  disp("Pre-filter frequency to avoid aliasing:");disp(prefilter_freq);
  end