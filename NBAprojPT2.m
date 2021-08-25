% H0 = The NBA FG% average in the covid year is 50%, mu = 50%
% H1 = The % is higher, 50 < mu
% Z = (X - mu)/(sigma/sqrt(n))
FGPer2020 = [48.2,47.5,47.4,47.3,47.2,47.2,46.8,46.8,46.7,46.6,46.5,46.4,46.4,46.2,46.2,46.0,46.0,45.9,45.8,45.7,45.6,44.9,44.9,44.7,44.7,44.5,44.2,44.1,43.8,43.4];
boxplot(FGPer2020)
xlabel('All NBA Teams')
ylabel('2020 Field Goal Percentage (MPG)')
title('All NBA Team Field Goal Percentages')
[h,p,ci,zval] = ztest(FGPer2020,50,std(FGPer2020,0,'all'))
Z0 = zval;
disp("Z0 = " + Z0); 
disp("Zalpha = " + norminv(0.05));
gamma = -5;
n = 30;
B = normcdf(norminv(0.05) - (gamma*sqrt(n))/sigma);
gamma = mean(FGPer2020,'all') - 46; % To get a B that doesnt exceed 0.1 when the true mean is 46
n = (norminv(0.05) + norminv(0.1)^2*sigma^2)/gamma^2;