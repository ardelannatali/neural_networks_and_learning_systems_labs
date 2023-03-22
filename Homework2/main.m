#lecture 3, slide 14
inputs_slide1 = [1, 1, 1, 1, -1, -1, -1, -1; 1, 1, -1, -1, 1, 1, -1, -1; 1, -1, 1, -1, 1, -1, 1, -1];
output_slide1 = [1, 1, 1, -1, 1, 1, -1, -1];
weights_slide1 = hebb(inputs_slide1, output_slide1);
result_slide1 = check_if_weights_implement_mapping(inputs_slide1, output_slide1, weights_slide1);
disp("Results for Slide 14:");
disp(result_slide1);

#lecture 3, slide 15
inputs_slide2 = [1, 1, 1, 1, -1, -1, -1, -1; 1, 1, -1, -1, 1, 1, -1, -1; 1, -1, 1, -1, 1, -1, 1, -1];
output_slide2 = [1, -1, -1, -1, 1, -1, 1, -1];
weights_slide2 = hebb(inputs_slide2, output_slide2);
result_slide2 = check_if_weights_implement_mapping(inputs_slide2, output_slide2, weights_slide2);
disp("Results for Slide 15:");
disp(result_slide2);

#function 1
inputs_func1 = [0.5, 0.5, 0.4, 0.4, -0.3, -0.3, -0.7, -0.7; 1, 1, -0.5, -0.5, 0.7, 0.7, -1, -1; 0.5, -0.3, 0.4, -0.5, 0.5, -0.4, 0.3, -0.5];
output_func1 = [1, 1, 1, -1, 1, 1, -1, -1];
weights_func1 = hebb(inputs_func1, output_func1);
result_func1 = check_if_weights_implement_mapping(inputs_func1, output_func1, weights_func1);
disp("Result for function 1:");
disp(result_func1);

#function 2
inputs_func2 = [0.5, 0.5, 0.4, 0.4, -0.3, -0.3, -0.7, -0.7; 1, 1, -0.5, -0.5, 0.7, 0.7, -1, -1; 0.5, -0.3, 0.4, -0.5, 0.5, -0.4, 0.3, -0.5];
output_func2 = [1, -1, -1, -1, 1, -1, 1, -1];
weights_func2 = hebb(inputs_func2, output_func2);
result_func2 = check_if_weights_implement_mapping(inputs_func2, output_func2, weights_func2);
disp("Result for function 2:");
disp(result_func2);

