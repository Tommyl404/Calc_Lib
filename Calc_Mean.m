%input: a - vector of size Tx1
%output: result - the mean of the vector that is an avarge of the elements.
function result = Calc_Mean(a)
T = size(a, 1);       % Number of elements in the vector
sum_vector = sum(a);  % Use MATLAB's sum function to compute the sum
result = sum_vector / T;  % Divide by the number of elements to get the mean
end
