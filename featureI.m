function m = featureI(fString)

[RGB bw] = fruitSegment(fString);

fruit = splitSegments(RGB,bw);


m1 = mean(fruit(:,1));
m2 = mean(fruit(:,2));
m3 = mean(fruit(:,3));

greylevel = 0.299*m1 + 0.587*m2 + 0.114*m3;

%m = m1 - mean([m1 m2 m3]);
m = m1 - greylevel;

end