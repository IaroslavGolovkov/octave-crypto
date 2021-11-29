function divisors = divisors (number)
  n = number;
  divisors=[];
  f = 2;  
  while n > 1
    if mod(n,f) == 0
      divisors = [divisors f];
      n = n/f;
    elseif
      f = f+1;
    end    
  endwhile
endfunction
