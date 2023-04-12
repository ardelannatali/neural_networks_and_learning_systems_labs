function [result] = check_if_weights_implement_mapping (inputs, output, weights)
  check = 1;
  transposed_inputs = inputs.';

  for i=1:size(output)(2)
    z = weights(1);
    inputs_row = transposed_inputs(i:i, :);

    for j=1:size(inputs_row)(2)
      z += weights(j+1) * inputs_row(j);
    endfor

    #disp(z);
    #disp(outputs(i));

    if sgn(z) != output(i)
      check = 0;
      break;
    endif
  endfor

  result = check;
endfunction

