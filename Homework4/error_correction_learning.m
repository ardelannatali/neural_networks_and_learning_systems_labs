function [w, iter, RMSE_history] = error_correction_learning(X, d, tol, max_iter, w_init='random')
  N = size(X, 1);
  n = size(X, 2);
  X = [ones(N, 1) X];

  if isequal(w_init, 'random')
    w = rand(n+1, 1);
  else
    w = w_init;
  end

  RMSE_history = [];
  iter = 0;

  while iter < max_iter
    iter = iter + 1;
    y = tanh(X * w);
    err = d - y;
    RMSE = sqrt(mean(err.^2));
    RMSE_history = [RMSE_history; RMSE];

    if RMSE <= tol
      break
    end

    for j = 1:N
      yj = tanh(X(j, :) * w);
      if yj ~= d(j)
        errj = d(j) - yj;
        w = w + errj * X(j, :)';
      end
    end
  end

  figure;
  plot(RMSE_history);
  xlabel('Iteration');
  ylabel('RMSE');
  title('RMSE History');
endfunction
