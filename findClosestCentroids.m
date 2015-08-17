function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

idx = zeros(size(X,1), 1);

for i=1:size(X,1)
 min=0;
 minidx=0;
 for j=1:size(centroids,1)
  d=X(i,:)-centroids(j,:);
  dist=sum(d.*d);
  if j==1
   min=dist;
   minidx=j;
  end
  if dist<min
   min=dist;
   minidx=j;
  end
 end
 idx(i)=minidx;
end

% =============================================================

end

