function unitSampleSequence(delay,length)
  %Unit Sample Sequence
  y=[zeros(1,delay) 1 zeros(1,length-delay-1)];
  x=0:(length-1);
  figure(2);
  %plot(x, y, 'MarkerSize', 5); 
  stem(x, y, 'MarkerSize', 5); 
  ylabel('x[n]'); 
  xlabel('Time Index (n)');
  title("Unit Sample Sequence");
  end