function covMatrix = calcCovMatrix(aepfel,bananen)

m1= mean(aepfel);
m2= mean(bananen);

f1 = 1/numel(aepfel)-1;

s1 = 0;
s2 = 0;
s3 = 0;
s4 = 0;

for k=1:1:numel(aepfel)
    
    s1 = s1 + (aepfel(k,1)-m1)*(aepfel(k,1)-m1);
    s2 = s2 + (aepfel(k,1)-m1)*(bananen(k,1)-m2);
    s3 = s3 + (bananen(k,1)-m2)*(aepfel(k,1)-m1);
    s4 = s4 + (bananen(k,1)-m2)*(bananen(k,1)-m2);
    
end


covMatrix = [f1*s1 f1*s2 ; f1*s3 f1*s4];

end