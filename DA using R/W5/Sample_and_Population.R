# Generate random 3 samples from 1 to 100sample(1:100, 3, replace=TRUE)
sample(1:100, 3, replace=TRUE)


# initialize an empty vector
new_number <- NULL

# run an operation 10 times.
# The ith position of new number will be set to i
# at the end of the loop, the vector new_number is printed
for (i in 1:10){
  new_number[i] <- i
}

print(new_number)


# set the seed such that you will get the same sample as in the solution code
set.seed(11225)

# empty vector sample means
sample_means <- NULL

x <- 1:500
# take 200 samples from x
for (i in 1:500){
  samp <- sample(x, 200, replace=TRUE)
  sample_means[i] <- mean(samp)
}

# calculate the population mean, that is, the mean of x and print it
mean(x)

# calculate the mean of the sample means, that is, sample_means
mean(sample_means)

# standard deviation of the sampling distribution of 200 samples

sampling_sd <- sd(x)/sqrt(200)



