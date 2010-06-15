function [mu1 mu2 var1 var2] = maximumLikelihood(apples,bananas)

[mu1 var1] = unvariantLikelihood(apples);
[mu2 var2] = unvariantLikelihood(bananas);

%same results as with unvariantLikelihood.m
%a=mle(apples);
%b=mle(bananas);

end