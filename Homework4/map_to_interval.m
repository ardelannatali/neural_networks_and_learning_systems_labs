function x = map_to_interval(k, a)
  % k: number of values
  % a: input values, a vector of integers from 0 to k-1

  x = -1 + (2*(a+0.5)/k);
endfunction
