%input: input array - an array of numeric numbers (1xT)
%output: largestIndex - the index of largest absolute value in the array
function largestIndex = Calc_Largest_By_Absolute_Value_Index_Version(inputArray)
    % Ensure the input is a valid array of doubles
    if ~isnumeric(inputArray) || ~isvector(inputArray)
        error('Input must be a numeric array.');
    end
    
    % Find the element with the largest absolute value
    [~, index] = max(abs(inputArray));
    
    % Output the corresponding value (not its absolute value)
    largestIndex = index;
end