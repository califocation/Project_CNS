%% 3dof
clc; clear; close all;
%% Creating the training set
 m = 10000; 
 theta_dist = RandAngleGen(m,1);
 ee_test = FK_formula(theta_dist);
 
%% Forward Kinematics
      temp = forward_kinematics(theta_dist);
     ee_dist = temp'; clear temp;

%% Inverse Kinematics
     thetas_pred = inverse_kinematics(ee_dist, theta_dist);
%% evaluation with animation
    test();
    

    
    

   
 

