
%% Chapter 9
% We once agan make use of the formula Z = (X - mu)/(sigma/sqrt(n))
% 1 - Probability after finding the region above and below the x-value, to
% find the symmetrical value just flip the sign
% type II error seems to be 0.5 as the answer alot. but its the Central
% limit theroem with the mean being equal to X.
% Common variables
% X = 4.82; mu = 5; n = 8; sigma = 0.13; alpha = norminv(small value)
% To find out if a hypothesis fails or not, do the Z value for the given
% values and compare it to alpha. If z0 < zalpha, then null hypothesis is
% true.
% < , Left one , mu < X , I want it to be less
% > , Right one, mu > X , I want it to be more
% !=, 2-tail, mu != X, please not this value
% H0(Null Hypothesis) = mu = X; 
% Halpha (Alternative hypothesis
% A way to find n sampsizepwr('z',[96 100],normcdf(0.05),0.85)
% n = ((Zalpha + Zb)^2*sigma^2)/gamma^2, where gamma = mu - mu0(X)
% remember to round up
% If it is two sided 
% B = normcdf(Zalpha/2 - (gamma*sqrt(n))/sigma) - normcdf(-Zalpha/2 - (gamma*sqrt(n))/sigma)
% d = (abs(mu - mu0)/sigma;
% For one sided, use either negative or positive side depending on the
% problem, so normcdf(Zalpha/2 - (gamma*sqrt(n))/sigma) or 1 - normcdf(-Zalpha/2 - (gamma*sqrt(n))/sigma)
% if it says the true mean equals something (= vs ,< or >) just make is
% positive and find the Z value
% Zb = the percentage of what is given so, norminv(0.9) is the the Zb if
% 0.9 is given.
% To find what T-value you need to use, do the CLT and then do normcdf(Z)
% and find what percentage you need based on the table.
% or, using degrees of freedom(n-1) and sigma, use tcdf and table.
% But when it asks for t0 or test statistic, just calculate t(Z).
% Use alpha for  ttest.
% Pvalue = 2*(1 - normcdf(abs(Z))) or P = (Z < normcdf(Z) or Z > normcdf(Z))
% Test statistic for P = Z = (X - n*p)/(sqrt(n*p*(1-p))) p is usually given
% B(type 2 error) = fail to reject H0 when H0 is false
% P(type 1 error) = P(reject H0 when H0 is true)
% If P is less than alpha, the reject null
% 








%% Chapter 10
% Z = (X1-X2)/sqrt(sigma1^2/n1 + sigma2^2/n2); if theres mu, 
% X1-X2-(mu - mu0)
% n = ((Zalpha + Zb)^2*(sigma1^2 + sigma2^2))/(delta - delta0)^2
% Delta is the new gamma = X1 - X2(0 usually)
% B = normcdf(Zalpha - ((delta - delta0)/sqrt(sigma1^2/n1 + sigma2^2/n2))) - normcdf(-Zalpha - ((delta - delta0)/sqrt(sigma1^2/n1 + sigma2^2/n2))) 
% or Z = (X1-X2)-(mu - mu0)/sqrt(sigma1^2/n1 + sigma2^2/n2), where X1-X2 = the lower Z and (mu1 - mu2)= given value
% Two sided
% H1: μ1 − μ2 ≠ Δ0 Probability above |z0| and probability below −|z0|, P = 2[1 − Φ(|z0|)] ,z0 > zα/2 or z0 < −zα/2
% H1: μ1 − μ2 > Δ0 Probability above z0, P = 1 − Φ, (z0) z0 > zα
% H1: μ1 − μ2 < Δ0 Probability below z0, P = Φ(z0), z0 < −zα
% Be careful, if its two-sided, alpha/2 and it applies to Zalpha/2 and ZB. Also n1 = n2 = ans. Counts as two sided 
% CI interval = (X1 - X2) - Zalpha/2*sqrt(sigma1^2/n1 + sigma2^2/n2)< mu1 -mu2 < (X1 - X2) + Zalpha/2*sqrt(sigma1^2/n1 + sigma2^2/n2)
% (X1-X2) was zero, Lower = -1.96*sqrt(sigma1^2/n1 + sigma2^2/n2), Upper =1.96*sqrt(sigma1^2/n1 + sigma2^2/n2)
% Example: Upper = Lower - 2.5/sqrt(sigma1^2/n1 + sigma2^2/n2), Lower = Upper-2.5/sqrt(sigma1^2/n1 + sigma2^2/n2)
% Be careful of alligator directions normcdf(Upper) - normcdf(Lower).
% Pool estimator S = ((n1-1)*s1 + (n2-1)*s2)/(n1 + n2-2)
% H1: μ1 − μ2 ≠ Δ0 ,Probability above |t0| and probability below − |t0| ,t0 > t(zalpha/2,n1+n2-2) or t0 < -t(zalpha/2,n1+n2-2)
% H1: μ1 − μ2 > Δ0 ,Probability above t0, t0 > t(zalpha,n1+n2-2)
% H1: μ1 − μ2 < Δ0 ,Probability below t0, t0 < -t(zalpha,n1+n2-2)
% T = (X1-X2)/(S*sqrt(s1/n1 + s2/n2)), where Sp is
% sigma, with mean X1-X2-(mu - mu0).
% T0 = (X1-X2-delta0)/sqrt(s1^2/n1 + s2^2/n2), when variance are assumed
% equal T0 = (X1-X2-delta0)/sqrt(1/n1 + 1/n2) and use S
% v = (s1^2/n1 + s2^2/n2)^2/((s1^2/n1)^2/(n1-1) + (s2^2/n2)^2/(n2-1))
% tinv and tcdf
% d = abs(delta - delta0)/(2*sigma), or S instead of sigma
% nstar = 2*n-1, n = (n*+1)/2 
% power = 1 - B
% Lower = X1-X2-t*S*sqrt(1/n1+1/n2), Upper = X1-X2+ X1-X2-t*S*sqrt(1/n1+1/n2), t = talpha/2, n1+n2-2
% S = sqrt(((n1-1)*s1^2 + (n2-1)*s2^2)/(n1 + n2-2))
% Pvlaue = 2(T< t0) = t < P < then probability of t
% The P-value is the title of the table in the appendix containing the
% t-value in the row df = n1 + n2 - 2. 
% alpha = (1-c)/2 = 0.025. c = confidence level
% delta = (s1^2/n1+s2^2/n2)^2/((s1^2/n1)^2/(n1-1)+(s2^2/n2)^2/(n2-1))
% P(hat) = (X1 + X2)/(n1+n2)
% Z = (P1 - P2)-(p1-p2)/sqrt((p1*(1-p1))/n1+(p2*(1-p2)/n2)) or Z = P1 - P2/sqrt(P*(1-P)*(1/n1+1/n2))
% P1 = X1/n1 P2 = X2/n2
% H1: p1 ≠ p2
% Probability above |z0| and probability below −|z0|, P = 2[1 − Φ(|z0|)]
% z0 > zα/2 or z0 < −zα/2
% H1: p1 > p2
% Probability above z0, P = 1 − Φ(z0)
% z0 > zα
% H1: p1 < p2
% Probability below z0, P = Φ(z0)
% z0 < −zα
% Ci = Z = P1-P2 -+ Zalpha*sqrt(P1*(1-P1)/n1 + p2*(1-P2)/n2)
% Paired T-test 
%H1: μD ≠ Δ0
% Probability above |t0| and probability below −|t0|
% H1: μD > Δ0
% Probability above t0
% t0 > tα,n−1
% H1: μD < Δ0
% Probability below t0
% t0 < −tα,n−1
% di = x1i -x2i 
% d(sum) = X(mean)1 - X(mean)2 or d = change in mu/2*sigma
% s^2d = (sum(di^2)-(sum(di)^2)/n)/(n-1)
% d - talpha/2,n-1*sd/sqrt(n) < d + talpha/n-1*sd/sqrt(n)
% t0 = d/(sd/sqrt(n))