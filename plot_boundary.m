function plot_boundary(x,theta)
    hold on
    %max_x1 = max(x(:,2))+1;
    %min_x1 = min(x(:,2))-1;
    max_x1 = max(x(:,2));
    min_x1 = min(x(:,2));
    max_x2 = max(x(:,3));
    min_x2 = min(x(:,3));
    % length of dataset
    m = length(x);
    % equation in terms of x2 = - (theta(1)*x1)/theta(2)
    %set y1 = x2 when x1 is at its minimum in the dataset and y2 = x2 when
    %x1 is at its maximum in the dataset
    for i = 1:m
       if (x(i,2) == min_x1)
           y1 = -(theta(1)*x(i,2))/theta(2);
       end
       if (x(i,2) == max_x1)
           y2 = -(theta(1)*x(i,2))/theta(2);
       end
    end
    plot([min_x1,max_x1],[y1,y2],'-')
    xlabel('x1')
    ylabel('x2')
end