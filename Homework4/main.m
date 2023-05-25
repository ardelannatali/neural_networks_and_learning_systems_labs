X = [0 2 1; 1 2 3; 2 1 3];  % input samples
d = [0; 1; 2];  % desired outputs

X = map_to_interval(4, X);  % map inputs onto the [-1, 1] interval
d = map_to_interval(4, d);  % map outputs onto the [-1, 1] interval

tol_values = [0.05, 0.01, 0.005];  % tolerance values
max_iter = 10000;  % maximum number of iterations
for i = 1:length(tol_values)
  tol = tol_values(i);
  [w, iter, RMSE_history] = error_correction_learning(X, d, tol, max_iter);

  X_augmented = [ones(size(X, 1), 1) X];  % augment X with a column of ones for the output computation
  y = tanh(X_augmented * w);  % compute outputs
  a = interpret_output(4, y);  % interpret outputs

  % display results
  fprintf('Tolerance: %f\n', tol);
  fprintf('Iterations: %d\n', iter);
  fprintf('Weights:\n');
  disp(w);
  fprintf('Outputs:\n');
  disp(y);
  fprintf('Integer interpretations:\n');
  disp(a);
end
