function outputs = forward_kinematics(data)
% stattic global values
l1 = 14.4; l2 = 13.13; l3  = 7.5; % in inches

%solved values of the end effector [Forward Kinematics]
targets = FK_formula(data);

% setting up neural network and training it
       % Inititalize the feedforward neural net/ hidden layer size =30 units    
%              FKnet = fitnet(50);
% %        % Train     
%              [FKnet] = trainlm(FKnet, data', targets');% traingd -gradient descent
% %        % save the network
%              save FKnet.mat FKnet;
        % load the saved network
            temp = load('FKnet.mat');
            FKnet = temp.FKnet; clear temp;
       % calculate the predictions of the trained network     
             outputs = FKnet(data');
             
 errors = gsubtract(outputs', targets);
 performance = perform(FKnet, targets, outputs');
 fprintf(' The performacne of the neural netwrok trained for FK is :%f\n', performance);
 %view(FKnet);
%% Visualize 
t = RandAngleGen(1000,1);% mx3

% temp = FK_formula(t');% FK   % mx2
% 
% temp1 = FKnet(t'); %i/p ; 3xm ; o/p =  3xm

plot_compare_FK(FKnet, t, t );

end

