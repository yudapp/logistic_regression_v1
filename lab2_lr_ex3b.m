%load the data
[X,y] = load_data_ex1();

% for question 7, modify the dataset X to have more features (in each row)
% append to X(i),the following features:
len = length(X);
% (remember that x_1 is the bias)->the bias term x_1 will only exist 
% after normalisation
for i = 1:len
    % here append x_1 * x_2 
    X(i,3) = X(i,1) * X(i,2);
    % here append x_1 * x_1 
    X(i,4) =X(i,1) * X(i,1);
    % here append x_2 * x_2 
    X(i,5) =X(i,2) * X(i,2);
end

% now we want to normalise our data
[X,mean,std] = normalise_features(X);

% after normalising we add the bias
%X=[ones(size(X,1),1),X,ones(size(X,1),1),ones(size(X,1),1),ones(size(X,1),1)];
X=[ones(size(X,1),1),X];
% initialise theta. Remember that theta needs to be
% the same size as one row of X
theta=[1.0,1.0,1.0,1.0,1.0,1.0];
alpha = 0.05;
iterations = 100;

[training_input,training_output,test_input,test_output] = return_test_set(X,y,17);

[t,cost_array]=gradient_descent_training(training_input,training_output,test_input,test_output,theta,alpha,iterations);

% plot_data_function(test,y)

display(['Training:',num2str(compute_cost(training_input,training_output,t))])
display(['Test:',num2str(compute_cost(test_input,test_output,t))])
h=plot_data_function(training_input,training_output,'Training set');
pause()
close(h)
h=plot_data_function(test_input,test_output,'Test set');
pause()
close(h)