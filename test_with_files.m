function results = test_with_files( files, classifier, feature_function)

  for index = 1:length(files)
      feature = feature_function(strcat('bilder/',files(index,:)));
      results(index) = predict(classifier,feature) ;
  end
end

