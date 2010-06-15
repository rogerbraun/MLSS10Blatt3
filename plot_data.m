function plot_data(aepfel,bananen,title_string)
    
    p_aepfel = mle(aepfel);
    p_bananen = mle(bananen);

    figure('Name',title_string);
    
    subplot(3,1,3);
    hold on;
    title('Verteilungen');
    
    range1 = linspace(p_aepfel(1) - p_aepfel(2) * 3,p_aepfel(1) + p_aepfel(2) * 3,100);
    pdf1 = normpdf(range1,p_aepfel(1),p_aepfel(2));
    plot(range1,pdf1,'r');
    range2 = linspace(p_bananen(1) - p_bananen(2) * 3,p_bananen(1) + p_bananen(2) * 3,100);
    pdf2 = normpdf(range2,p_bananen(1),p_bananen(2));
    plot(range2,pdf2,'y');
    subplot(2,2,1);
    hold on;
    title('Histogramm Äpfel');
    hist(aepfel);
    subplot(2,2,2);
    hold on;
    title('Histogramm Bananen');
    hist(bananen);
    hold off;
end

