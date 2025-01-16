% input: a - vector of size (Tx1), mean_of_a - the mean of vector a
% output: result - the var of a
function result = Calc_Var(a, mean_of_a)
    % Compute variance directly with vectorized operations
    deviations = a - mean_of_a;          % Compute (x_i - mean)
    squared_deviations = deviations.^2; % Square the deviations
    result = sum(squared_deviations) / (size(a, 1) - 1); % Variance formula
end
