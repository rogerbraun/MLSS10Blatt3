function [theta1_ theta2_] = unvariantLikelihood(D)

n = numel(D);

theta1_ = 1/n * sum(D);

sumFactor=0;

for k=1:1:n
    
    sumFactor_k = (D(k) - theta1_)^2;
    sumFactor = sumFactor + sumFactor_k;
    
end

theta2_ = sqrt(1/(n) * sumFactor);

end