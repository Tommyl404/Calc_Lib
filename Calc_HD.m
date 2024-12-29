%input: a - a decimal number. b - a decimal number
%output: result - the HD of the 2 numbers
%method: the HW of the A xor B is the HD(A,B)
function result = Calc_HD(a, b)
temp = bitxor(a, b);
result = Calc_HW(temp);
end