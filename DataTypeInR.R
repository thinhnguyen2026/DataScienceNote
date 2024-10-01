# Week 2, Wednesday, August 28, 2024
#-----------------------------------------------

#-----------Data Types in R------------------

# Scalar - a single number, 0-dimensional

x <- 6
x

# vector - a column or a row vector, 1- dimensional

x <- c(2, 3, 5, 7, 10, 15, 12)
x

x[4] 
x[5:6]
x[c(5,6)]

length(x) # Provides the total value in x
which(x == 2)

which(x == 10)

y <- seq(from=3, to=12, by = 2)
y

y <- seq(from = 3, to = 12, by = 1)
y

y1 <- 3:12
y1

# Extract the numbers from x which are more than 7 from 7
x[which (x<7)]
x[x>7]

#a
a <- seq(from = 3, to = 18, by = 1)
a

#b
a[a>12]

#c
a[a>10 | a<=7]

#d

%% remainder
%/% integer division

dbinom(x = 3, size = 10, prob = 0.5)
dpois(x = 5, lambda = 3)

pnorm(q = 1.96, mean = 0, sd = 1)
qt(p = 0.975, df = 10)

pchisq(q = 5.99, df = 2)
model <- lm(mpg ~ wt, data = mtcars)
residuals(model)


# New data: A sample of mpg values
new_data <- c(20, 21, 22, 19, 23, 24)

# Perform a one-sample t-test to check if the mean mpg is equal to 22
t_test_result <- t.test(new_data, mu = 22)

# Display the t-test result
t_test_result

# Repeat the calculation of mean of 10 random numbers, 100 times
means <- replicate(100, mean(rnorm(10)))

# Display the first few results
head(means)

# Fit a linear model: Predict mpg based on wt and hp
model <- lm(mpg ~ wt + hp, data = mtcars)

# Perform ANOVA on the fitted model
anova_results <- anova(model)

# Display the ANOVA table
anova_results