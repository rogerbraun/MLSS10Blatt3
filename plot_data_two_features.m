function plot_data_two_features(aepfel,bananen,title_string)
    
    %p_aepfel = mle(aepfel);
    %p_bananen = mle(bananen);

    figure('Name',title_string);
    
    subplot(3,1,3);
    hold on;
    title('Verteilungen');
    p_aepfel1 = mle(aepfel(1,1:end));
    p_aepfel2 = mle(aepfel(2,1:end));
    
    aepfelmu = [p_aepfel1(1),p_aepfel2(1)];
    aepfelsigma = [p_aepfel1(2),1;1,p_aepfel2(2)];
    
    x1 = linspace(p_aepfel1(1) - p_aepfel1(2) * 3,p_aepfel1(1) + p_aepfel1(2) * 3,100);
    x2 = linspace(p_aepfel2(1) - p_aepfel2(2) * 3,p_aepfel2(1) + p_aepfel2(2) * 3,100);
    [X1,X2] = meshgrid(x1,x2);
    F= mvnpdf([X1(:) X2(:)],aepfelmu,aepfelsigma);
    
    F = reshape(F,length(x2),length(x1));
    surf(x1,x2,F);
    %pdf1 = normpdf(range1,p_aepfel(1),p_aepfel(2));
    %plot(range1,pdf1,'r');
    %range2 = linspace(p_bananen(1) - p_bananen(2) * 3,p_bananen(1) + p_bananen(2) * 3,100);
   % pdf2 = normpdf(range2,p_bananen(1),p_bananen(2));
    %plot(range2,pdf2,'y');
    p_bananen1 = mle(bananen(1,1:end));
    p_bananen2 = mle(bananen(2,1:end));
    
    bananenmu = [p_bananen1(1),p_bananen2(1)];
    bananensigma = [p_bananen1(2),1;1,p_bananen2(2)];
    
    x1 = linspace(p_bananen1(1) - p_bananen1(2) * 3,p_bananen1(1) + p_bananen1(2) * 3,100);
    x2 = linspace(p_bananen2(1) - p_bananen2(2) * 3,p_bananen2(1) + p_bananen2(2) * 3,100);
    [X1,X2] = meshgrid(x1,x2);
    F= mvnpdf([X1(:) X2(:)],bananenmu,bananensigma);
    
    F = reshape(F,length(x2),length(x1));
    surf(x1,x2,F);
    
    subplot(2,2,1);
    hold on;
    title('Histogramm Äpfel');
    %hist(aepfel);
    hist3(aepfel');
    subplot(2,2,2);
    hold on;
    title('Histogramm Bananen');
    %hist(bananen);
    hist3(bananen');
    hold off;
end

