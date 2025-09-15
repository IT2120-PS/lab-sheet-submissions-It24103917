setwd("C:\\Users\\Asus\\Desktop\\IT24103917")
Exercise
# Part 1
1.
# It asks to find the distribution of X.
# Since we have a fixed number of trials (n=50) and success probability p=0.85,
# the distribution is Binomial.
# Therefore:
# X ~ Binomial(n=50, p=0.85)


2.
# It asks to find P(X >= 47).
# This can be found using "dbinom" command as follows:
prob_X_ge_47 <- sum(dbinom(47:50, size=50, prob=0.85))
prob_X_ge_47
# Output: 0.04604658

# Part 2
1.
# Part 4
# Since calls arrive on average at a constant rate (12 per hour),
# the distribution is Poisson with parameter λ = 12.
# Therefore:
# X ~ Poisson(lambda=12)
2.
# Part 5
# It asks to find P(X = 15).
# This can be found using "dpois" command as follows:
prob_X_eq_15 <- dpois(15, lambda=12)
prob_X_eq_15
# Output: 0.07239112


