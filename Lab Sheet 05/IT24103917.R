setwd("C:\\Users\\it24103917\\Desktop\\IT24103917")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)


# Histogram
hist(Delivery_Times$Delivery, 
     breaks=9, 
     xlim=c(20, 70), 
     main="Histogram of Delivery Times", 
     xlab="Delivery Time", 
     col="lightblue", 
     right=TRUE)

# The histogram suggests that the delivery times are bimodal, 
# with a peak around 40 minutes and another smaller peak around 50-60 minutes. 
# The distribution is slightly right-skewed, as there are fewer instances of 
# delivery times above 60 minutes.

#Calculate cumulative frequency
delivery_cut <- cut(Delivery_Times$Delivery, breaks=seq(20, 70, by=5), right=TRUE)

freq_table <- table(delivery_cut)
cum_freq <- cumsum(freq_table)

bin_midpoints <- seq(22.5, 67.5, by=5)

plot(bin_midpoints, cum_freq, type="o", 
     col="blue", xlab="Delivery Time", ylab="Cumulative Frequency", 
     main="Cumulative Frequency Polygon (Ogive)")
