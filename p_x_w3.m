function result = p_x_w3(x)
    result = mvnpdf(x,[0.5,0.5],[1,0;0,1]) + mvnpdf(x,[-0.5,0.5],[1,0;0,1]);
end