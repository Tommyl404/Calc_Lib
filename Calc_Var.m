% input: a - vector of size (Tx1), mean_of_a - the mean of vector a
% output: result - the var of a
function result = Calc_Var(a, mean_of_a)
T = size(a,1); %size of a in the 1 dim (a vector that looks like Tx1)
sum_vector = 0; %init to the sum
for i = 1:T
    sum_vector = sum_vector + ((a(i,1) - mean_of_a)^2); %sum((x_i - miu)^2)
end
result = sum_vector / (T-1); %(1/n-1)*sum((x_i - miu)^2)
end