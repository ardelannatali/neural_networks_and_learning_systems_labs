function [weights, iterations] = error_correction(inputs, outputs, init_weights, max_iterations)
  n = size(inputs, 2);
  bias = ones(1, n);
  extended_inputs = [bias; inputs];

  if isempty(init_weights)
    weights = -0.5 + rand(1, size(inputs, 1) + 1);
  else
    weights = init_weights;
  endif

  iterations = 0;
  learning_complete = false;

  while !learning_complete && iterations < max_iterations
    learning_complete = true;

    for j = 1:n
      z = dot(weights, extended_inputs(:, j));
      y = sign(z);

      if y != outputs(j)
        learning_complete = false;
        delta = outputs(j) - y;
        weights += delta * extended_inputs(:, j)';
      endif
    endfor

    if !learning_complete
      iterations++;
    endif
  endwhile
endfunction
