%input: input array - an array of numeric numbers
%output: largestValue - the largest absolute value in the array
function largestValue = findLargestByAbsoluteValue(inputArray)
    % Ensure the input is a valid array of doubles
    if ~isnumeric(inputArray) || ~isvector(inputArray)
        error('Input must be a numeric array.');
    end
    
    % Find the element with the largest absolute value
    [~, index] = max(abs(inputArray));
    
    % Output the corresponding value (not its absolute value)
    largestValue = inputArray(index);
end