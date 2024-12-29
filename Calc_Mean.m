%input: a - vector of size Tx1
%output: result - the mean of the vector that is an avarge of the elements.
function result = Calc_Mean(a)
T = size(a,1); %size of a in the 1 dim (a vector that looks like Tx1)
sum_vector = 0; %init to the sum
for i = 1:T
sum_vector = sum_vector + a(i,1);
end
result = sum_vector / T;
end