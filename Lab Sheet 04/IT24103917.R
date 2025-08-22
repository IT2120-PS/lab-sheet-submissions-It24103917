setwd("c:\\Users\\it24103917\\Desktop\\IT24103917")
branch_data <- read.table("Exercise.txt", header = TRUE, sep=",")
attach(branch_data)
fix(branch_data)


boxplot(Sales_X1,
        main = "Box plot for sales",
        ylab = "Sales_x1",
        outline = TRUE,
        outpch = 8,
        horizontal = TRUE)

quantile(Advertising_X2,
         probs = c(0, 0.25, 0.5, 0.75, 1))
IQR(Advertising_X2)

get.outliers<- function(z){
  q1 <- quantile(z, 0.25);
  q3 <- quantile(z, 0.75);
  iqr <- q3-q1
  lb <- q1 - 1.5*iqr;
  ub <- q3+1.5*iqr;
  outliers<-z[z< lb | z > ub]
  print(paste("upper Bound = ",ub))
  print(paste("Lower Bound = ",lb))
  print(paste("outliers:", paste(sort(z[z < lb | z > ub]), collapse = ",")))}
get.outliers(Years_X3)