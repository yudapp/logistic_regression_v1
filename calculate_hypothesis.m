function result=calculate_hypothesis(X,theta,training_example)
    %%%%%%%%%%%%%%%%%%%%%%%%
    %Calculate the hypothesis for the i-th training example in X.
    %%%%%%%%%%%%%%%%%%%%%%%%
    %using the notion that the i-th example in X is X(training_example,:)
    %perform elementwise multiplication then sum all values
    hypothesis = sum(X(training_example,:).*theta);
    result=sigmoid(hypothesis);
end
    

