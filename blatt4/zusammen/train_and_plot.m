function classifier = train_and_plot( feature_function, title_string )

[aepfel,bananen] = load_training_files(feature_function);
classifier = train_classifier(aepfel,bananen);

p_aepfel = mle(aepfel);
p_bananen = mle(bananen);
chernoff_bound = calcChernoffBound(p_aepfel(1),p_bananen(1),p_aepfel(2),p_bananen(2),-1)
%bhattacharyya bound
bhattacharyya_bound = chernoffBound2(.5, p_aepfel(1), p_bananen(1), p_aepfel(2), p_bananen(2),1)
classifier = classifier_from_training_data(feature_function);

%test_data = [aepfel,bananen]';

%res = predict(classifier,test_data);

plot_data(aepfel,bananen,title_string);
end

