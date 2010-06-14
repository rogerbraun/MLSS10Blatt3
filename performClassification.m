function [labeling error1 error2] = performClassification(forxDataPoints)

[apples bananas] = generateTData();

if forxDataPoints >= numel(apples) || forxDataPoints >= numel(bananas)
    forxDataPoints = max([numel(apples) numel(bananas)]);
end

tData = [apples(1:forxDataPoints,1); bananas(1:forxDataPoints,1)];
label_a = 'apfel_';
label_b = 'banane';
tLabel = cell(2*forxDataPoints,1);

tLabel(1:forxDataPoints,1) = {label_a};
tLabel(forxDataPoints+1:2*forxDataPoints,1) = {label_b};


[mu1 mu2 var1 var2] = maximumLikelihood(apples(1:forxDataPoints,1),...
    bananas(1:forxDataPoints,1));
%charnoff bound
error1 = calcChernoffBound(mu1,mu2,var1,var2);
%bhattacharyya bound
error2 = chernoffBound2(.5, mu1, mu2, var1, var2);

classifier = trainClassifier(tData,tLabel);
size([apples; bananas])
labeling = classifiyData(classifier,[apples; bananas]);


%plot
subplot(3,1,3);
hold on;
title('Verteilungen');
range1 = mu1-3*var1:2.5:mu1+3*var1;
pdf1 = normpdf(range1,mu1,var1);
plot(range1,pdf1,'r');
range2 = mu2-3*var2:2.5:mu2+3*var2;
pdf2 = normpdf(range2,mu2,var2);
plot(range2,pdf2,'y');
subplot(2,2,1);
hold on;
title('Histogramm Äpfel');
hist(apples(1:forxDataPoints,1));
subplot(2,2,2);
hold on;
title('Histogramm Bananen');
hist(bananas(1:forxDataPoints,1));
hold off;
end