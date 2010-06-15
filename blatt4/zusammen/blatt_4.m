

apple_pics = str2mat('a0.jpg','a1.jpg','a2.jpg','a3.jpg','a4.jpg','a5.jpg',...
    'a6.jpg','a7.jpg','a8.jpg','a9.jpg','a10.jpg','a11.jpg','a12.jpg','a13.jpg','a14.jpg');
banana_pics = str2mat('b0.jpg','b1.jpg','b2.jpg','b3.jpg','b4.jpg','b5.jpg',...
    'b6.jpg','b7.jpg','b8.jpg','b9.jpg','b10.jpg','b11.jpg','b12.jpg','b13.jpg','b14.jpg');

banana_test_pics = str2mat('b2.jpg','b3.jpg','b4.jpg','b5.jpg','b6.jpg','b7.jpg');

% Trainieren und Plotten von Feature 1:
c1 = train_and_plot(@featureI,'Feature 1');

%title(['Feature 1: Rot-Anteil']);
results_first_feature = [test_with_files(apple_pics,'bilder/',c1,@featureI); test_with_files(banana_pics,'bilder/',c1,@featureI)];
% Trainieren und Plotten von Feature 2:
c2 = train_and_plot(@feature2,'Feature 2');
results_second_feature = [test_with_files(apple_pics,'bilder/',c2,@feature2); test_with_files(banana_pics,'bilder/',c2,@feature2)];
%title(['Feature 2: Kreisähnlichkeit']);

% Trainieren und Plotten von Feature 2 mit nur jedem 10. Pixel
c3 = train_and_plot(@feature2_reduced, 'Feature 2, 10%');
%title(['Feature 2: Kreisähnlichkeit (Nur jedes 10. Pixel)']);

results_second_feature_reduced = [test_with_files(apple_pics,'bilder/',c3,@feature2_reduced); test_with_files(banana_pics,'bilder/',c3,@feature2_reduced)];

c4 = train_and_plot_two_features(@featureI, @feature2);
results_two_features = [test_with_files(apple_pics,'bilder/',c4,@feature1_2); test_with_files(banana_pics,'bilder/',c4,@feature1_2)];

%Trainieren beider Features aber nur jedes 10. Pixel

c5 = train_and_plot_two_features(@featureI2,@feature2_reduced);