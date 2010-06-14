function train_and_plot( feature_function )

[aepfel,bananen] = load_training_files(feature_function);
classifier = train_classifier(aepfel,bananen);

test_data = [aepfel,bananen]';

res = predict(classifier,test_data);

plot_data(aepfel,bananen);
end

