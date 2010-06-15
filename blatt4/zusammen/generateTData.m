function [apples bananas] = generateTData()

apple_pics = str2mat('a0.jpg','a1.jpg','a2.jpg','a3.jpg','a4.jpg','a5.jpg',...
    'a6.jpg','a7.jpg','a8.jpg','a9.jpg','a10.jpg','a11.jpg','a12.jpg','a13.jpg','a14.jpg');
banana_pics = str2mat('b0.jpg','b1.jpg','b2.jpg','b3.jpg','b4.jpg','b5.jpg',...
    'b6.jpg','b7.jpg','b8.jpg','b9.jpg','b10.jpg','b11.jpg','b12.jpg','b13.jpg','b14.jpg');
    
    
%apple_pics = str2mat('a1.jpg','a2.jpg','a3.jpg','a5.jpg','a6.jpg','a7.jpg',...
%    'a10.jpg','a11.jpg','a12.jpg');
%banana_pics = str2mat('b0.jpg','b1.jpg','b2.jpg','b3.jpg','b4.jpg','b5.jpg',...
%    'b6.jpg','b7.jpg','b8.jpg');

size_ = size(apple_pics,1);

apples = zeros(size_,1);
bananas = zeros(size_,1);

for k=1:1:size_
    
    file_a = apple_pics(k,:);
    file_a = regexprep(file_a, '\s', '');
    a = featureI(strcat('bilder/',file_a));
    apples(k,1) = a;
    file_b = banana_pics(k,:);
    file_b = regexprep(file_b, '\s', '');
    b = featureI(strcat('bilder/',file_b));
    bananas(k,1) = b;
    
end

end