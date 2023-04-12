% Define input/output mappings
inputs = [1, 1, 1, 1, -1, -1, -1, -1; 1, 1, -1, -1, 1, 1, -1, -1; 1, -1, 1, -1, 1, -1, 1, -1];
outputs_14 = [1, 1, 1, -1, 1, 1, -1, -1];
outputs_15 = [1, -1, -1, -1, 1, -1, 1, -1];

% Define normalized Hebbian weights
hebbian_weights = [-0.25, -0.1, 0.125, 0.325];

% Perform error-correction learning with random starting weights for slide 14 input/output mapping
[weights_rand_14, iterations_rand_14] = error_correction(inputs, outputs_14, [], 1000);

% Perform error-correction learning with random starting weights for slide 15 input/output mapping
[weights_rand_15, iterations_rand_15] = error_correction(inputs, outputs_15, [], 1000);

% Perform error-correction learning with Hebbian starting weights for slide 15 input/output mapping
[weights_hebb_15, iterations_hebb_15] = error_correction(inputs, outputs_15, hebbian_weights, 1000);

% Display the number of iterations and weights for each case
printf("Random starting weights (Slide 14): %d iterations\n", iterations_rand_14);
disp("Weights:");
disp(weights_rand_14);

printf("Random starting weights (Slide 15): %d iterations\n", iterations_rand_15);
disp("Weights:");
disp(weights_rand_15);

printf("Hebbian starting weights (Slide 15): %d iterations\n", iterations_hebb_15);
disp("Weights:");
disp(weights_hebb_15);
