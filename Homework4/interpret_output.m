function a = interpret_output(k, y)
  % k: number of values
  % y: outputs, a vector of real numbers in [-1, 1]

  a = floor((y+1)*k/2);
endfunction
