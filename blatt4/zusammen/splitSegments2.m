function fruit = splitSegments2(picData, bwData)

picSize = size(picData);

non_black = zeros(picSize(1)*picSize(2),3);
counter = 0;

for k=1:1:picSize(1)
    
    for i=1:10:picSize(2)
        
        if bwData(k,i) > 0
            
            counter = counter + 1;
            non_black(counter,:) = picData(k,i,:);
 
            
        end
        
    end
    
end

fruit = non_black(1:counter,:);


end