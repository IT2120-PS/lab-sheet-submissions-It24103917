getwd()
setwd("C:\\Users\\it24103917\\Desktop\\IT24103917")

data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
attach(data)

#Q1:
pop_mean <- mean(Weight.kg.)
pop_sd <- sd(Weight.kg.)

print(paste("Population Mean:", pop_mean))
print(paste("Population Standard Deviation:", pop_sd))

#Q2:
samples <- c()
n_samples <- 25
sample_size <- 6

for (i in 1:n_samples) {
  s <- sample(Weight.kg., size = sample_size, replace = TRUE)
  samples <- cbind(samples, s)
}
colnames(samples) <- paste0("Sample_", 1:n_samples)
sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

print("Sample Means:")
print(sample_means)
print("Sample Standard Deviations:")
print(sample_sds)

#Q3;
#Calculate the mean and standard deviation of the 25 sample means
# and state the relationship of them with true mean and true standard deviation.
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

print(paste("Mean of Sample Means:", mean_of_sample_means))
print(paste("Standard Deviation of Sample Means (Standard Error):", sd_of_sample_means))

# Compare and state the relationship
# The theoretical standard deviation of the sample means is pop_sd / sqrt(sample_size)
theoretical_sd_of_means <- pop_sd / sqrt(sample_size)

print("--- Relationships ---")
print("Relationship between Population Mean and Mean of Sample Means:")
print(paste("Population Mean (", pop_mean, ") is approximately equal to the Mean of Sample Means (", mean_of_sample_means, ")"))

print("Relationship between Population Standard Deviation and Standard Deviation of Sample Means:")
print(paste("The Standard Deviation of Sample Means (", sd_of_sample_means, ") is approximately equal to the Population Standard Deviation divided by the square root of the sample size (", theoretical_sd_of_means, ")"))