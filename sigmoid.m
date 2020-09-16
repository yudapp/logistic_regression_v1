function output=sigmoid(z)
    %return z passed through the sigmoid function
    %%%%%%%%%%%%%%%%%%%%%%%%
    %         ______1________
    %output =        -(z')
    %          1 + e^
    %%%%%%%%%%%%%%%%%%%%%%%%
    output = 1.0 ./(1.0 + exp(-(z')));
end
