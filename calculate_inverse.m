function inverse_matrix = calculate_inverse(matrix)
    % Check if the input matrix is square
    [m, n] = size(matrix);
    if m ~= n
        error('Input matrix must be square.');
    end
    
    % Check if the input matrix is invertible
    if det(matrix) == 0
        error('Input matrix is not invertible.');
    end
    
    % Calculate the inverse using MATLAB's inv function
    inverse_matrix = inv(matrix);
end