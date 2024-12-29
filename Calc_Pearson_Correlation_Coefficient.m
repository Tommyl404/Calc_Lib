%input: a - vector of size (Tx1), b - vector of size (Tx1)
%output: result - the pearson correlation coefficient of a and b
%Note: if a and b are not the same size, the function will return an error.
function result = Calc_Pearson_Correlation_Coefficient(a, b)

if size(a, 1) ~= size(b, 1)
    error('Function can only take two vectors of the same size.');
end


SD_a = Calc_Standard_Deviation(a);
SD_b = Calc_Standard_Deviation(b);
cov_a_b = Calc_Cov(a,b);

result = cov_a_b / (SD_a * SD_b);
end