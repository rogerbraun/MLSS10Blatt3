function error = chernoffBound2(beta, mu1, mu2, var1, var2)

error = .5^beta*.5^(1-beta)*exp(chernoffBound(beta,mu1,mu2,var1,var2));

end