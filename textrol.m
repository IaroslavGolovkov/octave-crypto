function output = textrol (input, number)
  if number > length(input)
    error('Error: number cannot be larger than length of input text!');
  endif
  output = [input(number+1:end) input(1:number)];
endfunction