%% Chapter 7 and 8 work
% sigma is std
% p-hat = x/n
% mu,x-hat = (b + a)/2. sigma,x-hat = sqrt((b - a)^2/12) or
% sigma^2/sqrt(n)
%  P = (X - mu)/sigma
% Central Limit Theorem = Z = (X - mu)/(sigma/sqrt(n))
% With two X-bars Z = X1-X2-(mu1 - mu2)/sqrt((sigma1^2/sqrt(n1)+(sigma2^2/sqrt(n2)))
% cont N(mu1 - mu2, sigma1^2/n1 + sigma2^2/n2)
% Finally, X is the given value X1 - X2 = (X - mu)/sqrt(sigma)(all from above coordinate)
% pd = makedist('Normal',mu,sigma)
% Coefficient of Variation CV = sigma/ mu. sigma = std mu = mean
% SE(Standard Error) = sigmaX = sigma/sqrt(n)
% Confidence interval (X-z*sigma/sqrt(n) < mu < X+z*sigma/sqrt(n)
% Z(alpha/2) = (1 - percentage given)/2
% How to do ttest
% [h,p,ci,stats] = ttest(SpecFailure)
% Example of prediction interval S = 71.428; Lower = X-(2.861)*S*sqrt(1 + 1/n),Upper = X+(2.861)*S*sqrt(1 + 1/n)
% Uses ttest, X is mean.
% Pvalue = 2*(1 - normcdf(teststatistic))



  








%% Chapter 8 
% Zscore(alpha/2)*sigma/sqrt(n) sigma is variance 
% 99, 95, 99.5 are the most commmon confidence intervals. continued below
% ONE TAIL Z(alpha), for alpha/2 divide z/2, for example, two tailed 95,
% normcdf(0.975) not 95.
% 1.96 = 95%  = 0.975 zscore value
% 2.33 = 99% = 0.995 zscore value
% 2.58 = 99.9% = 0.9995 zscore value
% n = ((Z(alpha/2)* sigma)/E)^2 sample size for specified error / 
% n  =(X/(Z*sd))^2
% T = (x-bar - mu)/(S/sqrt(n)) S is population variance
% Zscore(alpha/2)*S/sqrt(n)
% X^2 = ((n-1)*S^2)/(sigma)^2
% Population Proportion Z = (X - n*p)/sqrt(n*p(1-p))
% P-hat = percentage of error
% n = (Zalpha/E)^2*p*(1-p)
% E = Zalpha/2*sqrt(p*(1-p)/n)
% Like physics, write down all your varuables and match to the best of your
% ability the equation. With no mean or std, assume mean = 0 and std = 1 
% Confidence Interval Example of a 95% ci  Lower = X-(1.96)*sigma/sqrt(n),Upper = X+(1.96)*sigma/sqrt(n)
% To find out what ci percentage you have: z(alpha/2) = given -> normcdf(given) -> alpha/2 = 1 - zscore(percentage from normcdf)
% For t-dist,Since n = 22, we have n − 1 = 21 degrees of freedom for t, so t0.025,21 = 2.080. The resulting CI is
% The second number is n, the first number is the given percentage
% also in the form of 100(1 - alpha)% = whatever your answer is
% For one tail, use one tail dist table, for two use two.
% phat = X/n; number of occurences vs size
% Prediction Interval-> Lower = p - Zalpha* sqrt(p*(1-p)/n),Upper = p + Zalpha* sqrt(p*(1-p)/n)
% norminv gives the value if you put in z percentage, it gives zalpha/2,
% other z alpha is normal. Read question, it gives expected error
% assume P is 0.5