function results = test_with_files( files,folder, classifier, feature_function)

  for index = 1:length(files)
      feature = feature_function(strcat(folder,files(index,:)));
      results(index) = predict(classifier,feature) ;
  end
end

