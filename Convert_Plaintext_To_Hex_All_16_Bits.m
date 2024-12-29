function result = Convert_Plaintext_To_Hex_All_16_Bits(a)
result = zeros(size(a,1),16);

for i = 1:size(a,1) %number of cells in a
    temp = char(a{i,1});
    mid = (hex2dec(reshape(temp, 2,16)'))';
    result(i,:) = mid();
end
end