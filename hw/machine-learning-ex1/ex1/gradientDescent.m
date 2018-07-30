function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    cost = computeCost(X, y, theta);
    %theta = theta -  ( (alpha/m) * sum( (X * theta - y) .* X(:,2) ) );
    thetaTemp = zeros(2,1);
    thetaTemp(1) = theta(1) -  ( (alpha/m) * sum( (X * theta - y) .* X(:,1) ) );
    thetaTemp(2) = theta(2) -  ( (alpha/m) * sum( (X * theta - y) .* X(:,2) ) );
    theta = thetaTemp;
    %fprintf('Theta is now (%f,%f), Cost computed = %f\n', theta(1), theta(2) ,cost);



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);



end

end
