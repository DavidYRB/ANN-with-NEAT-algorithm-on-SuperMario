function net = ann(X,Y)
data = X;
class = Y;

target = zeros(size(data,1),7);
for i = 1:size(X,1)
    for j = 1:7
       if class(i) == j
            target(i,j) = 1;
       end
    end
end

% Solve a Pattern Recognition Problem with a Neural Network
% Script generated by NPRTOOL
%
% This script assumes these variables are defined:
%
%   cancerInputs - input data.
%   cancerTargets - target data.

inputs_tra = data';
targets_tra = target';


% Create a Pattern Recognition Network
% hiddenLayerSize = 10;
net = patternnet([150,150,150]);


% Set up Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;


% Train the Network
[net,tr] = train(net,inputs_tra,targets_tra);

% Test the Network
% outputs = net(inputs_tra);
% errors = gsubtract(targets_tra,outputs)
% performance = perform(net,targets_tra,outputs)

% View the Network
% view(net)
end
% % Plots
% % Uncomment these lines to enable various plots.
% % figure(1), plotperform(tr)
% % figure(2), plottrainstate(tr)
% % figure(3), plotconfusion(targets_tra,outputs)
% % figure(4), ploterrhist(errors)
% 
% % Test the Network with independent test dataset
% outputs_tes = net(inputs_tes);
% out = zeros(size(outputs_tes));
% %%
% for i = 1:length(data_test)
%     out(find(outputs_tes(:,i) == max(outputs_tes(:,i))),i) = 1;
% end
% %%
% temp = 0;
% flag = 1;
% target_test = target_test';
% for i = 1: length(data_test)
%     if out(:,i) == target_test(:,i)
%         temp = temp+1;
%     end
% end
% accuracy = temp/length(data_test)
% t_errors = gsubtract(targets_tes,outputs_tes);
% t_performance = perform(net,targets_tes,outputs_tes)
    
