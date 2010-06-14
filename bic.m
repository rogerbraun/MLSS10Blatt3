function res = bic(file)
%BIC uses bayesian image classification to seperate an apple and a banana.
%file is the location string of the image.

% read image
image = imread(file);

% transform image to a grayshade image
image_gray = rgb2gray(image);

% remove gray areas, image becomes black and white
threshold = 0.1; % image has black background, so we can use this threshold
image_bw = im2bw(image_gray, threshold);

% remove small objects
image_bw = bwareaopen(image_bw, 50);

% fill remaining black "holes" in the shape
image_bw = imfill(image_bw, 'holes');

% determine exterior boundaries of shape
[B,L] = bwboundaries(image_bw, 'noholes');

% display the label matrix and draw each boundary
%imshow(label2rgb(L, @jet, [.5 .5 .5]))
%hold on
%for k = 1:length(B)
%  boundary = B{k};
%  plot(boundary(:,2), boundary(:,1), 'w', 'LineWidth', 2)
%end

% determine similarity between shape and a circle
stats = regionprops(L,'Area','Centroid');

threshold = 0.94;

% loop over the boundaries
for k = 1:length(B)

  % obtain (X,Y) boundary coordinates corresponding to label 'k'
  boundary = B{k};

  % compute a simple estimate of the object's perimeter
  delta_sq = diff(boundary).^2;    
  perimeter = sum(sqrt(sum(delta_sq,2)));
  
  % obtain the area calculation corresponding to label 'k'
  area = stats(k).Area;
  
  % compute the roundness metric
  metric = 4*pi*area/perimeter^2;
  
end

   
res = metric;

end

