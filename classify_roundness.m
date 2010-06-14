[aepfel,bananen] = load_training_files(@feature2);
classifier = train_classifier(aepfel,bananen);

test_data = [aepfel,bananen]';

res = predict(classifier,test_data);

plot_data(aepfel,bananen);
