# the data frame
data <- data.frame(outcome = 0:5, probs = c(0.1, 0.2, 0.3, 0.2, 0.1, 0.1))

# make a histogram of the probability distribution
barplot(names = data$outcome,height = data$probs)

# simulating data
set.seed(11225)
data <- rnorm(10000)

# check for documentation of the dnorm function
help(dnorm)

# calculate the density of data and store it in the variable density
density <- dnorm(data)

# make a plot with as x variable data and as y variable density
plot(data,density)

# probability that x is smaller or equal to two
probability <- (0.1+0.2+0.3)

#' probability that x is 0, smaller or equal to one,
#' smaller or equal to two, and smaller or equal to three
cumsum(c(0.1,0.2,0.3,0.2))

# calculate the expected probability value and assign it to the variable expected_score
expected_score <- sum(data$outcome * data$probs)

# print the variable expected_score
expected_score


# the mean of the probability mass function
expected_score <- sum(data$outcome * data$probs)

# calculate the variance and store it in a variable called variance
variance <- sum((data$outcome - expected_score)^2 * data$probs)
# calculate the standard deviation and store it in a variable called std
std <- sqrt(variance)
