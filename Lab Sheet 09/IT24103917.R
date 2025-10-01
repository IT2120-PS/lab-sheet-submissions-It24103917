setwd("C:\\Users\\Asus\\Desktop\\IT24103917")

#Part_01

set.seed(123)   
sample_data <- rnorm(25, mean = 45, sd = 2)
sample_data

#Part_02

t.test(sample_data, mu = 46, alternative = "less", conf.level = 0.95)