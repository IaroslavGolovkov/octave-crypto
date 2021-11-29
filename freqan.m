function [alphabet, frequency] = freqan (input_text)
  alphabet = unique(input_text);
  M = length(alphabet);
  N = length(input_text);
  frequency = zeros(1, M);
  for i = 1:M
    for j = 1:N
      if(input_text(j) == alphabet(i))
        frequency(i) = frequency(i) + 1;
      endif    
    endfor
  endfor

 %Visualisation
  xLabel = {M};
  labels = {M};
  for i = 1:M
    xLabel{i} = cellstr(alphabet(i));
    labels{i} = num2str(frequency(i));
  endfor
  
  figure('Name', 'Text frequency analysis', 'NumberTitle', 'off');
  b = bar(frequency);
  xlabel('Alphabet');
  ylabel('Frequency');
  title('Text frequency analysis');
  set(gca, 'XTick',1:M, 'XTickLabel',xLabel);
  text(1:M,frequency+0.1, labels,'HorizontalAlignment','center', 'VerticalAlignment','bottom', 'fontsize', 12)
  xlim([0 M+1]);
  ylim([0 max(frequency)+0.5]);
endfunction
