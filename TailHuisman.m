function [H Hsd] = TailHuismanOLS(Hill,min,max);
% Huisman, Koedijk, Kool, Palm (J Bus Econ Stat, 2001) estimator of tail index
% OLS implementation
%
% Hill is a vector of estimates (e.g., Hill's) of the tail-index
% min is the smallest sample size used to estimate the tail-index
% max is the largest sample size used to estimate the tail-index
%
% First version: Richard Tol, 8 March 2020
% This version: Richard Tol, 9 March 2020

for i=1:max-min+1,
    trend(i) = i+min-1;
end

intercept = ones(1,length(trend));
X = [intercept' trend'];
beta  = inv(X'*X)*X'*Hill;
H = beta(1);
resid = Hill - X*beta;
SSR = resid'*resid;
sigsq = SSR/(length(resid)-2);
Cov = sigsq*inv(X'*X);
Hsd = sqrt(Cov(1,1));
