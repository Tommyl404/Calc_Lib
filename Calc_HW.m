%input: a (decimal number)
%output: HW = the humming weight of the 2 numbers in decimal
function HW = Calc_HW(a)
preprocess = dec2bin(a);
HW = sum(preprocess == '1');
end