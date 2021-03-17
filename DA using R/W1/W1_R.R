#Addition
3+4
#Subtraction
 4-3
#Power
 4^2

#Assignment
x <-4
x

#Assignment
a <-1
b <-2

#Addition
c <-a+b
c

#Addition
apple <- 5
orange <- "six"
var <-TRUE

fruit <- cat(apple,orange)

#check datatype
class(orange)

#check datatype
class(var)

#Assignment
var <- "3"
var_num <- as.numeric(var)
class(var_num)

#Conversion
as.integer("4.5")
as.numeric("three")

#Assignment
v1 <- TRUE
v2 <- 0.3
v3 <- "i"

#Conversion
v1_char <- as.character(v1)
class(v1_char)
is.character(v1_char)
v2_char <- as.integer(v2)
class(v2_char)
v3_char <- as.numeric(v3)
class(v3_char)

#1-D array

numeric_vector <- c(1,10,11)
character_vector <- c("a","b","c")
boolean_vector <- c(TRUE,FALSE,TRUE)

numeric_vector[1]
boolean_vector[c(2,3)]





#We will use mtcars dataset
#data(mtcars)

#mpg Miles/(US) gallon.
#cyl Number of cylinders.
#disp Displacement (cu.in.)
#hp Gross horsepower
#drat Rear axle ratio
#wt Weight (lb/1000)
#qsec 1/4 mile time
#vs V/S
#am Transmission (0 = automatic, 1 = manual)
#gear Number of forward gears
#carb Number of carburetors

#check header
head(mtcars)

#check dimension
dim(mtcars)

#check structure
str(mtcars)

#Check unique values
unique(mtcars$mpg)



mtcars2 <- mtcars
#Assign the label "high" to mpgcategory where mpg is greater than or equal to 20
mtcars2$mpgcategory[mtcars2$mpg >= 20] <- "high"
#Assign the label "low" to mpgcategory where mpg is less than 20
mtcars2$mpgcategory[mtcars2$mpg < 20] <- "low"

#Assign mpgcategory as factor to mpgfactor
mtcars2$mpgfactor <- as.factor(mtcars2$mpgcategory)

#Check unique values
unique(mtcars2$mpgfactor)

#Check count of unique values
table(mtcars$am)

# What percentage of cars have 3 or 5 gears?
table(mtcars$gear)

#Assign the frequency of the mtcars variable "am" to a variable called "height"
height<- table(mtcars$am) 
#Create a barplot of "height"
barplot(height)

# vector of bar heights
height <- table(mtcars$am)
# Make a vector of the names of the bars called "barnames"
barnames <-c("automatic","manual")
# Label the y axis "number of cars" and label the bars using barnames
barplot(height, ylab = "number of cars",names.arg =barnames)

# Make a histogram of the carb variable from the mtcars data set. Set the title to "Carburetors"
hist(mtcars$carb, main = "Carburetors")

# arguments to change the y-axis scale to 0 - 20, label the x-axis and colour the bars red

hist(mtcars$carb, main = "Carburetors",xlab= "Number of Carburetors",ylim = c(0,20),col = "red")

# Calculate the mean miles per gallon
mean(mtcars$mpg)
# Calculate the median miles per gallon
median(mtcars$mpg)

# Produce a sorted frequency table of `carb` from `mtcars`
sort(table(mtcars$carb),decreasing = TRUE)

# Minimum value
x <- min(mtcars$mpg)
# Maximum value
y <- max(mtcars$mpg)
# Calculate the range of mpg using x and y
# Calculate quantile
quantile(mtcars$qsec)

# Make a boxplot of qsec
boxplot(mtcars$qsec)

# Calculate the interquartile range of qsec
IQR(mtcars$qsec)

# What is the threshold value for an outlier below the first quartile?
13.88125
# What is the threshold value for an outlier above the third quartile?
21.91125

# Find the IQR of horsepower
83.5
# Find the standard deviation of horsepower
68.56287
# Find the IQR of miles per gallon
7.375
# Find the standard deviation of miles per gallon
6.026948

# Calculate the z-scores of mpg
(mtcars$mpg-mean(mtcars$mpg))/sd(mtcars$mpg)

#zscore

zscore <- (mtcars$mpg-mean(mtcars$mpg))/sd(mtcars$mpg)

hist(mtcars$mpg)
hist(zscore)


