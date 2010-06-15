function [res clas1 clas2] = classifiyFruits()

[apples bananas] = generateTData();

[a_mu a_sigma] = unvariantLikelihood(apples(1:12,1))
[b_mu b_sigma] = unvariantLikelihood(bananas(1:12,1))


a = normcdf([apples;bananas],a_mu,a_sigma);
b = normcdf([apples;bananas],b_mu,b_sigma);


[a_mu2 a_sigma2] = unvariantLikelihood(apples([2 3 4 6 7 8 11 12],1));
[b_mu2 b_sigma2] = unvariantLikelihood(bananas(1:8,1));

a2 = normpdf([apples;bananas],a_mu2,a_sigma2);
b2 = normpdf([apples;bananas],b_mu2,b_sigma2);

clas1 = [];
clas2 = [];

apfel = 'Apfel_';
banane = 'Banane';
for k=1:1:numel(apples)+numel(bananas)
    
    if a(k) >= b(k)
        clas1 = [clas1;apfel];
    else
        clas1 = [clas1;banane];
    end
    
    if a2(k) >= b2(k)
        clas2 = [clas2;apfel];
    else
        clas2 = [clas2;banane];
    end
    
end

res = [a b a2 b2 ];

end