function outputs = inverse_kinematics(data, targets)

% setting up neural network and training it
%        % Inititalize the feedforward neural net/ hidden layer size =50 units    
%              IKnet = fitnet(50);
%        % Train     
%              [IKnet] = trainlm(IKnet, data', targets');% traingd -gradient descent
%        % save the network
%              save IKnet.mat IKnet;
        % load the saved network
            temp = load('IKnet.mat');
            IKnet = temp.IKnet; clear temp;
       % calculate the predictions of the trained network     
             outputs = IKnet(data');
             
 
 performance = perform(IKnet, targets, outputs');
 fprintf('The performance of the neural netwrok trained for FK is :%f\n', performance);
 %view(IKnet);

%% visualize the performance of the neural net graphically for the FK problem.
plot_compare_IK(IKnet);
end


