# TailIndex
Matlab routines to estimate the tail index alpha

The generalized Central Limit Theorem has that the sum of independent, identically and symmetrically distributed random variables converges to a distribution whose tail is Pareto, with 0 < alpha <= 2. If alpha = 2, the variance is finite and the specific Central Limit Theorem applies so that the tail is Normal.

TailHill.m is a function that returns the maximum likelihood, best linear unbiased, least squares and moment estimators.
TailWHill.m does the same, but for weighted data.

TailZipf.m is a function that returns estimators based on the QQ-plots. The advantage of these estimators is that they are robust to deviations from the Pareto distribution. They should be more reliable in small samples.
TailWZipf.m does the same, but for weighted data.


