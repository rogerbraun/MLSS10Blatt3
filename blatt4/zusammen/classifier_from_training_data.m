function classifier = classifier_from_training_data(feature_function )

[aepfel,bananen] = load_training_files(feature_function);
classifier = train_classifier(aepfel,bananen);


end

