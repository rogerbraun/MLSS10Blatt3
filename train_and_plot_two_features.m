function classifier = train_and_plot_two_features( f1,f2 )

[aepfel1,bananen1] = load_training_files(f1);
[aepfel2,bananen2] = load_training_files(f2);

aepfel = [aepfel1;aepfel2];
bananen = [bananen1; bananen2];

classifier = train_classifier(aepfel,bananen);

plot_data_two_features(aepfel,bananen,'Beide Features');
end

