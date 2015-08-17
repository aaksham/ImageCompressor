function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. Returns a matrix of
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

centroids = zeros(K, n);
num=zeros(K,1);
for i=1:m
 centroids(idx(i),:)=centroids(idx(i),:)+X(i,:);
 num(idx(i))=num(idx(i))+1;
end
for i=1:n
 centroids(:,i)=centroids(:,i)./num;

% =============================================================
end

