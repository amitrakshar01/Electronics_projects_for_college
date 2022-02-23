function unitStepSequence(n)
  %Unit Step Sequence
  y=ones(1,n);
  x=0:(n-1);
  figure(1);
  %plot(x, y, 'MarkerSize', 5); 
  stem(x, y, 'MarkerSize', 5); 
  ylabel('x[n]'); 
  xlabel('Time Index (n)');
  title("Unit Step Sequence");
  end