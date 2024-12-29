%input: a - vector of size (Tx1)
%output: standard_deviation_a - the standard deviation of a
function standard_deviation_a = Calc_Standard_Deviation(a)
standard_deviation_a = sqrt(Calc_Var(a,Calc_Mean(a))); %sqrt((1/n-1)*sum((x_i - miu)^2))
end