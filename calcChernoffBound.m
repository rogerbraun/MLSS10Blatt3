function error = calcChernoffBound(mu1,mu2,var1,var2)

beta_s = fminbnd(@(beta) chernoffBound(beta,mu1,mu2,var1,var2),0,1);
error = chernoffBound2(beta_s, mu1, mu2, var1, var2);

end