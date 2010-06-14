function classifier = train_classifier_roundness(aepfel,bananen )

    training_data = [aepfel,bananen]';
    
    training_classes = cell(length(aepfel) + length(bananen),1);
    training_classes(1:length(aepfel)) = {'Apfel'};
    training_classes(length(aepfel)+1:length(training_classes)) = {'Banane'};
    
    classifier = NaiveBayes.fit(training_data,training_classes);
        
end

