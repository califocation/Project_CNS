function [r] = rand_range(high, low, rows,cols)
% finds a matrix of random number within a range
r = (high-low).*rand(rows, cols) + repmat(low, rows, cols);
end