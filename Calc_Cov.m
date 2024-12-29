%input: a - vector of size (Tx1) , b - vector of size (Tx1)
%output: result - the cov of the 2 vectors samples.
%Note: if a and b are not the same size, the function will return an error.
function result = Calc_Cov(a, b)

if size(a, 1) ~= size(b, 1)
    error('Function can only take two vectors of the same size.');
end

a_mean = Calc_Mean(a); %mean_X
b_mean = Calc_Mean(b); %mean_y

temp_a = a - a_mean; %x_i - mean_X
temp_b = b - b_mean; %y_i - mean_Y
sum = 0;
for i = 1:size(a,1)
    sum = sum + (temp_a(i,1) * temp_b(i,1)); %sum((x_i - Mean_X)(y_i - mean_Y)
end
result = sum / (size(a,1) - 1); %(sum((x_i - Mean_X)(y_i - mean_Y))/N-1 = Cov_(x,y)
end