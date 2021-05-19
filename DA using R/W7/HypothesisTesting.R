
###########################################################
###########################################################

## Hypothesis Testing in R

###########################################################
###########################################################


###########################################################
## Task One: Getting Started
## In this task, you will learn to set and check your current
## working directory. Also, you will learn two important rules
## for hypothesis testing
###########################################################

## Set and get the working directory

## setwd("Enter path to directory")

## Get the working directory
getwd()

## Rule One:
## When p-value < level of significance or 
## when test statistic (calculated value) > tabulated value, 
## we have evidence against the null hypothesis, hence,
## do not accept the null hypothesis

## Rule Two:
## On the other hand if  p-value > level of significance or 
## when test statistic (calculated value) < tabulated value,
## we have weak evidence against the null hypothesis, so 
## we fail to reject the null hypothesis


###########################################################
## Task Two: Test for Proportions
## In this task, we will perform hypothesis test for proportions
###########################################################

## 2.1: Consider a survey asking 100 randomly selected people if they had 
## breakfast on Saturday morning. 
## Suppose 42 people say yes. Does this support the 
## hypothesis that the true proportion is 50%? 

## To answer this, we set up a test of hypothesis. The null hypothesis, 
## denoted H0 is that the proportion p is 0.5, the alternative hypothesis, 
## denoted HA, in this example would be that the proportion p is not 0.5. 
## This is a so called two-sided alternative test.

## To test the assumptions, we use the function prop.test as 
## with the confidence interval calculation as follows: 
prop.test(42,100,p=0.5,alternative = c("two.sided"),conf.level = 0.95,correct = TRUE)


## 2.2: What if we ask 1000 people and 420 say yes. 
## Does this still support the 
## null hypothesis that p = 0.5? 

prop.test(420,1000,p=0.5,alternative = c("two.sided"),conf.level = 0.95,correct = TRUE)


###########################################################
## Task Three: Test for Means
## In this task, we will perform hypothesis testing for means
###########################################################

## 3.1: Suppose a flash light manufacturer claims a customer gets 
## 25 hours of light on average on a full charge. 
## A consumer group asks 10 owners of this flashlight to calculate 
## their hours of usage on a full charge and the mean value was 22 
## with a standard deviation of 1.5.
## Is the manufacturer's claim supported? 

## In this case H0: mu = 25 against the one-sided 
## alternative hypothesis that mu < 25. 
## To test using R we simply need to tell R about the type of test. 
## (As well, we need to convince ourselves that the t-test is appropriate 
## for the underlying parent population.) 


## For this example, the built-in R function 
## t.test isn't going to work as the data is already summarized 
## so we are on our own. We need to calculate the test statistic and then 
## find the p-value. 

## Compute the t statistic. Note we assume mu = 25 under H0 
xbar <- 22
s <- 1.5
n <- 10 
t <- (xbar-25)/(s/sqrt(n))
pt(t,df =(n-1))


## Calculate the t statistic


## Now use pt to get the distribution function of t 
## To get the p-value


## 3.2: The following is the results of the measurements on each of 
## 6 randomly selected members of a population whose distribution is 
## normal with unknown mean and unknown variance: 11,19,16,21,24,27
## Test the hypothesis mu = 14.0 against the alternative mu > 14.0 
## at 5% level of significance.

result <- c(11,19,16,21,24,27)
t.test(result,mu = 14,alternative = 'greater')
?t.test
###########################################################
## Task Four: Two sample test for proportions
## In this task, we will learn how perform hypothesis test
## for proportions for two samples 
###########################################################

## 4.1: A survey is taken two times over the course of two weeks. 
## The pollsters wish to see if there is a difference in the results 
## as there has been a new advertising campaign run. 
## Here is the data:

Week1 <- c(45,35)
Week2 <- c(56,47) 
advert <- data.frame(Week1, Week2)
rownames(advert) <- c("Favorable", "Unfavorable")  
advert

## The standard hypothesis test is H0 : P1 = P2 against the alternative
## (two-sided) HA: P1 neq P2.
## The function prop.test is used to being called 
## as prop.test(x,n) where x is the number favorable and n is the total. 
## Here it is no different, but since there are two xs it looks slightly 
## different as follows:
prop.test(c(45,56),c(45+35,56+47))

###########################################################
## Task Five: Two sample test for means
## In this task, we will learn how to perform hypothesis test
## for means for two samples with equal and unequal variances
###########################################################

## 5.1: Suppose the recovery time for patients taking a new drug is 
## measured (in days). A placebo group is also used 
## to avoid the placebo effect. The data is as follows:

withdrug <- c(15,12,13,7,9,8)
placebo <- c(15,11,8,12,10,7)

## Plot a boxplot for the two variables
boxplot(withdrug,placebo)

## The boxplot supports the assumptions of equal variances and normality.

## Calculate the variances
var(withdrug)
var(placebo)

## We now test the null hypothesis of equal means against the one-sided 
## alternative that the drug group has a smaller mean. 
t.test(withdrug,placebo,alternative = 'less',var.equal = FALSE)

## 5.2: Two-sampled t-test with unequal variances
## Let's use the same example as above, but assuming unequal variances
t.test(withdrug,placebo,alternative = 'less',var.equal = TRUE)


###########################################################
## Task Six: Matched Samples
## In this task, we will learn how to test hypothesis for matched samples
###########################################################

## 6.1: In order to promote fairness in grading an entrance examination, each  
## candidate was graded twice by different graders. Based on the grades, 
## can we see if there is a difference between the two graders? 

grader1 <- c(3, 0, 5, 2, 5, 5, 5, 4, 4, 5) 
grader2 <- c(2, 1, 4, 1, 4, 3, 3, 2, 3, 5) 

## Clearly there are differences. Are they described by random fluctuations 
## (mean mu is 0), or is there a bias of one grader over another? 
## (mean mu neq 0)

## We should check the assumption of normality with normal plots
par(mfrow= c(1,2))
qqnorm(grader1)
qqline(grader1)
qqnorm(grader2)
qqline(grader2)
## A matched sample test will give us some insight. 
## We apply the t-test as follows: 
t.test(grader1,grader2,paired = TRUE,alternative = "two.sided")

