
Bodyweight <- c('Less than 50Kg','Less than 50Kg','Less than 50Kg','50-90Kg','50-90Kg','70-89kg','70-89kg',
                '90kg or more','90kg or more','90kg or more')
Choc <- c('less than 50g','less than 50g','less than 50g','50-150g','50-150g','50-150g','more than 150g',
          'more than 150g','more than 150g','more than 150g')

table(Bodyweight,Choc)

Y <- c(50,70,70,95)
X <- c(50,100,200,300)

plot(X,Y,xlab = 'Chocolate consumption',ylab = 'Body Weight',main = 'Body weight vs Chocolate consumption')


line <- lm(Y~X)
abline(line)

r <- cor(X,Y)
rsquare <-r**2
rsquare


#Practice

data(women)

head(women)

plot(women$weight,women$height,main = 'Heights and Weights')
