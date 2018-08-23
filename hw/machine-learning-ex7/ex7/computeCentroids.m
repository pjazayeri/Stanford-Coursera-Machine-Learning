function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


for iter = 1:K
    c_i = idx==iter;
    centroid_count = sum(c_i);
    c_i_mat = repmat(c_i,1, n);
    centroid_mean = sum(c_i_mat .* X) ./ centroid_count;
    centroids(iter,:) = centroid_mean;
    

end



    
    % centroidSum = zeros(n);
    % centroidCount = 0;
    % for iter = 1:m
    %     if (idx(iter) == centroid)
    %         centroidSum += X(iter,:);
    %         centroidCount = centroidCount + 1;
    %     end
    % end
    % centroidMean = centroidSum ./ centroidCount;
    % centroids(centroid,:) = centroidMean;

% =============================================================


end

