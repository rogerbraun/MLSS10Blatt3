function error = chernoffBound2(beta, mu1, mu2, var1, var2,i)

error = .5^beta*.5^(1-beta)*exp(-1*chernoffBound(beta,mu1,mu2,var1,var2,i));

end