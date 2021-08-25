Y = @(x)  (1 - 1/16*x.^2)


q = integral(Y,0.1,0.2)

% Continous Uniform Distribution = f(x) =1/(b - a)
% mean = (a+b)/2  V = (b-a)^2/12, however, std = sqrt(V) dont forget.
% P(A U B) = P(A) + P(B) - P(A n B) where n is the intersection(and) and U is
% the union(or). P(A n B) = P(A)P(B)
% P(A|B) = P(A n B)P(B)
 
%% Normal Distribution
% f(x) = 1/sqrt(2*pi*sigma).*exp(-(x-mu).^2/(2*sigma.^2))
% mean or mu = E(x) and V(X) = sigma^2 or std^2
% standard normal variable mu = 0 and sigma^2 = 1
% Z = (X - mu)/sigma
% also try normcdf
% mu = 0;
% sigma = 1;
% X = 1.3;
% disp(NormalSV(X,mu,sigma))
% function Z = NormalSV(X, mu, sigma)
% Z =(X - mu)/sigma;
% end
% With a problem that asks for the P(X < x) = given. start with 1 - P(X <
% x)whatever the given value is. The use table to find the closest z score
% to value
%x = mu + z * sigma
%pd = makedist('Normal')
% P(X <= x) = P((X - mu)/sigma <= (x - mu)/sigma)) = P(Z <= z)
% To do 25 quartile or 75 quartile, find the closest value to 0.25 or 0.75
% in the z-score table and solve for x using the formula 
%(X - mu)/sigma = whatever zscore you found.
%% Normal Approximation to the Binomial Distribution 
%(X <= x) = (x + 0.5 - n*p)/(sqrt(n*p*(1-p)))
%(x <= X) = (x - 0.5 - n*p)/(sqrt(n*p*(1-p)))
%%Normal Approximation to the Poisson Distribution 
% Z = (X - lamda)/sqrt(lamda)