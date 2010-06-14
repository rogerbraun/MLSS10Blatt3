function result = p_x_w2(x)
    result = mvnpdf(x,[1,1],[1,0;0,1]);
end