apple_pics = str2mat('a0.jpg','a1.jpg','a2.jpg','a3.jpg','a4.jpg','a5.jpg',...
    'a6.jpg','a7.jpg','a8.jpg','a9.jpg','a10.jpg','a11.jpg','a12.jpg','a13.jpg','a14.jpg');
banana_pics = str2mat('b0.jpg','b1.jpg','b2.jpg','b3.jpg','b4.jpg','b5.jpg',...
    'b6.jpg','b7.jpg','b8.jpg','b9.jpg','b10.jpg','b11.jpg','b12.jpg','b13.jpg','b14.jpg');

banana_test_pics = str2mat('b2.jpg','b3.jpg','b4.jpg','b5.jpg','b6.jpg','b7.jpg');
c4 = train_and_plot_two_features(@featureI, @feature2);
