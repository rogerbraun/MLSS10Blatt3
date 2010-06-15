function chernoff = chernoffBound(beta,mu1,mu2,var1,var2,i)

fac1 = beta*(1-beta)/2;
fac2 = mu2-mu1;
fac3 = (beta*var1 + (1-beta)*var2)^-1;
fac4 = mu2-mu1;
fac5 = 1/2*log(abs(beta*var1 + (1-beta)*var2)/(abs(var1)^beta*abs(var2)^(1-beta)));
chernoff = (fac1*fac2*fac3*fac4 + fac5)^i;

end