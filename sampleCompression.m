A = double(imread('C:\Users\LBS-Finance\Desktop\AAKSHA\AA\Training Repository\ML\githubCopy\ImageCompression\glacier.png'));
A = A / 255; % Divide by 255 so that all values are in the range 0 - 1
img_size = size(A);
X = reshape(A, img_size(1) * img_size(2), 3);
K = 16; 
max_iters = 10;
initial_centroids = kMeansInitCentroids(X, K);

% Run K-Means
[centroids, idx] = runkMeans(X, initial_centroids, max_iters);
idx = findClosestCentroids(X, centroids);
X_recovered = centroids(idx,:);
X_recovered = reshape(X_recovered, img_size(1), img_size(2), 3);
subplot(1, 2, 1);
imagesc(A); 
title('Original');
subplot(1, 2, 2);
imagesc(X_recovered)
title(sprintf('Compressed, with %d colors.', K));