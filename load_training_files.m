function [ aepfel,bananen ] = load_training_files(feature_function)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    aepfel_files = dir(fullfile('bilder','a*.jpg'));
    aepfel_files = aepfel_files(1:15); % Damit aTest.jpg und abTest.jpg nicht dabei sind.
    bananen_files = dir(fullfile('bilder','b*.jpg'));
    
    for index = 1:15
        aepfel(index) = feature_function(strcat('bilder/',aepfel_files(index).name));
        bananen(index) = feature_function(strcat('bilder/',bananen_files(index).name));
    end  
        
end

