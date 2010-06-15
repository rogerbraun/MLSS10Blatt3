function labeling = modifyClassifier(classifier,data,labela,labelb)
%return  nx1 cell array containing string labels
%labela is an apple label
%labelb is a banana label
pProbabilities = posterior(classifier,data);

labeling = cell(size(pProbabilities,1),1);

for k=1:1:size(pProbabilities,1)
    %even if p(banana) is slightly (about 0.1 in difference) greater than 
    %p(apple) the label will be an apple label
    if pProbabilities(k,1) >= pProbabilities(k,1)-.1
        labeling(k,1) = {labela};
    else
        labeling(k,1) = {labelb};
    end
    
end

end