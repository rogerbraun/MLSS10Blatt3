function classifier = trainClassifier(tData, tLabel)

classifier = NaiveBayes.fit(tData, tLabel);

end

