% Maximum Likelihood für Feature 2

%Äpfel
[aepfel,birnen] = load_training_files;

parameter_aepfel = mle(aepfel);
parameter_birner = mle(birnen);

test_space = linspace(-2,2)

aepfel_normalverteilung = normpdf(test_space, parameter_aepfel(1),parameter_aepfel(2));
figure;
plot(test_space,aepfel_normalverteilung);
hold on;



birnen = dir(fullfile('bilder','b*.jpg'));
results_map2 = containers.Map;
for index = 1:(length(birnen)) % -2 um aTest und abTest loszuwerden
    results_map2(birnen(index).name) = bic(strcat('bilder/',birnen(index).name));
end
temp = values(results_map2);
for index = 1:length(temp)
    birnen_results_array(index) = temp{index}
end

parameter_birnen = mle(birnen_results_array)

birnen_normalverteilung = normpdf(linspace(-2,2),parameter_birnen(1),parameter_birnen(2));
%figure;
plot(linspace(-2,2),birnen_normalverteilung);

%fruechte_nach_form_klassifikator = NaiveBayes.fit