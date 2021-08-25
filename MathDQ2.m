% In a random sample of 85 automobile engine crankshaft bearings, 10 have a surface finish that is rougher than the specifications allow. Construct a 95% two-sided confidence interval for p.
% A 95% two-sided confidence interval for p is computed from Equation 8-11 as
% [h,p,ci,stats] = ttest(SpecFailure)
% 12.14 <= mu <= 15.28
p = 0.12;
Zalpha = 1.96;
n = 85;
Upper = p + Zalpha* sqrt(p*(1-p)/n),Lower = p - Zalpha* sqrt(p*(1-p)/n)