function result = p_w3(x)
    temppxw3 = p_x_w3(x) .* 1 / 3;
    temppx = p_x(x);
    %result = (p_x_w3(x) * 1/3) / p_x(x);
    result = temppxw3 ./ temppx;
end