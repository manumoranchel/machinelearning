function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

%Vectorised version
%centroid_distance = zeros(size(X,1), K);
%for i = 1:K
%  pibotNorm = (X - centroids(i,:)).^2;
%  centroid_distance(:,i) = pibotNorm(:,1) + pibotNorm(:,2);  
%endfor
%[min_value min_index] = min(centroid_distance,[],2);
%idx = min_index;

for i = 1:size(X,1)
  min_distance = 1000000;
   for k = 1:K
     error = X(i,:) - centroids(k,:);
     error = error * error';
     if error < min_distance
       min_distance = error;
       idx(i) = k;
     endif
   endfor
 endfor
% =============================================================

end

