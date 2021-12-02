function output = shuffle (input)
    output = input;
    for i = length(input)-1 : -1 : 1
      j = randi(i+1);
      tmp = output(j);
      output(j) = output(i);
      output(i) = tmp;
    endfor
endfunction