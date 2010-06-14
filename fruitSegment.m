function [RGB,bw] = fruitSegment(fString)

RGB = imread(fString);
%imshow(RGB);

I = rgb2gray(RGB);
threshold = graythresh(I);
bw = im2bw(I,threshold);

% remove all object containing fewer than 30 pixels
bw = bwareaopen(bw,30);

% fill a gap in the pen's cap
se = strel('disk',2);
bw = imclose(bw,se);

% fill any holes, so that regionprops can be used to estimate
% the area enclosed by each of the boundaries
bw = imfill(bw,'holes');

%imshow(bw);

end