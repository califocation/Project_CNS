function angles = RandAngleGen(m,n)
% Generates a matrix of random angles within limits with dimesnion (mxn)
 theta2_max = pi/2; theta2_min = 0;  % in radians
 theta1_max = pi; theta1_min = -pi/2;
 theta3_max = pi/2; theta3_min = -pi/2;
%% Creating the training set
%m = 10000; n = 1; % Rows and Cols for the random values of thetas which also define the size of the training set

angles  = [ rand_range(theta1_max, theta1_min, m, n) rand_range(theta2_max, theta2_min, m, n)...
                        rand_range(theta3_max, theta3_min, m, n)];
end