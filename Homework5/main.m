% Load data
load('wdbc_MLP_Learning_Testing_Data.mat')

% Set initial parameters
n_inputs = size(Learning_wdbc_MLP, 2) - 1;
n_outputs = 1;
tolerance_threshold = 0.05;
iterations_limit = 5000;
output_flag = 500;

% Parameters for topology experiments
hidden_neurons_start = 2;
hidden_neurons_step = 2;
num_experiments = 5;

% Initialize variable to keep track of the best topology
best_classification_rate = 0;
best_topology = 0;

% 1. Experiments with increasing number of hidden neurons
for i = 1:num_experiments
    n_hidden_neurons = hidden_neurons_start + (i-1)*hidden_neurons_step;

    % Learning phase
    [weights, iterations, RMSE] = LearningMLP(Learning_wdbc_MLP, n_hidden_neurons, n_outputs, tolerance_threshold, iterations_limit, output_flag);

    % Testing phase
    [RMSE, ClassifRate] = TestingMLP2(Testing_wdbc_MLP, n_hidden_neurons, weights);

    % Print results
    fprintf('Experiment %d:\n', i);
    fprintf('Hidden Neurons: %d, RMSE: %.2f\n', n_hidden_neurons, RMSE);

    % Check if this topology is the best so far
    if ClassifRate > best_classification_rate
        best_classification_rate = ClassifRate;
        best_topology = n_hidden_neurons;
    end

    % Add a pause to control when the next experiment starts (press any key to continue)
    input('Press any key to start the next experiment...\n', 's');
    % Close the plot before the next experiment
    close all;
end

% 2. Experiments with best network topology and different initial weights
best_accuracy_results = zeros(1, num_experiments);
for i = 1:num_experiments
    % Use LearningMLP to train the network
    [weights, iterations, RMSE] = LearningMLP(Learning_wdbc_MLP, best_topology, n_outputs, tolerance_threshold, iterations_limit, output_flag);
    % Use TestingMLP2 to test the network
    [RMSE, ClassifRate] = TestingMLP2(Testing_wdbc_MLP, best_topology, weights);
    % Store results
    final_classification_rates(i) = ClassifRate;
    % Add a pause to control when the next experiment starts (press any key to continue)
    input('Press any key to start the next experiment...\n', 's');
    % Close the plot before the next experiment
    close all;
end

% Calculate average classification rate for best topology
average_classification_rate = mean(final_classification_rates);

% Display summary of results
fprintf('Summary of Results:\n');
fprintf('\nBest topology: %d hidden neurons\n', best_topology);
fprintf('Average Classification Rate for this topology: %.2f\n', average_classification_rate);



