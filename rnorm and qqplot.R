# Week 7, Monday, September 30, 2024
#--------------------------------------

tips <- read.csv("tips.csv")
head(tips)

# Frequency histogram

library(ggplot2)

dev.new(width=1,height=1)
ggplot(data=tips,aes(tip)) +
  geom_histogram(bins=7,col="red",fill="grey")

Exercise: Prpduce a percentage/proportion histogram.

# Density Histogram
#Frequency = f(i)
#relatve frequency r(i) = f(i)/n
#density d(i) = f(i)/w, w:width

#It is continuous and smoothed version of the histogram estimated from the data
# To calculate the density, divide the relative frequency for each group by binwid

dev.new(width=1,height=1)
ggplot(data=tips,aes(tip)) +
  geom_histogram(aes(y=..density..),bins=10,col="red",fill="grey")+
  geom_density(col="blue",size =2)

#Normal Distribution
# X ~ Normal(Mean=mu,variance=sigma)
#Assume that the age(x) of all students at DePauw is normal with mean,
# mu =21.2 years and standard deviation, sigma=1.01 years.

# Generate everyone's age from a normal distribution
# DePauw, N=1800
# rnorm(x, mean =mu,sd=sigma)

round(rnorm(1800, mean=21.2,sd=1.01),1)

# Exercise: Draw a density histogram of the data and overlay a density curve.


set.seed(1233)
age <- round(rnorm(1800,mean=21.2,sd=1.01),1)
mean(age)
sd(age)


# Exercise: Draw a density histogram of the data and overlay a density curve.
df <- data.frame(age)
head(df)
  
  dev.new(width=1,height=1)
  ggplot(data=df,aes(age)) +
    geom_histogram(aes(y=..density..),bins=10,col="red",fill="grey")+
    geom_density(col="blue",size =2)+
  
  stat_function(fun =dnorm,
                args = list(mean = mean(df$age),sd=sd(age)),
                col = "black", size = 1)
  
  #q-q plot
dev.new(width=1,height=1)
ggplot(data=df,aes(sample=age)) +
  stat_qq(col="red")+
  stat_qq_line(col= "blue")

# Sampling from a normally distributed population
# If x ~ N(mu, sigma), then xbar ~ Normal(mu=mu,sd=sta)
# age ~ Normal(mu=21.2, sigma = 1.01)

n <- 20 # sample size
m <- 5000 #simulation size

sample_means <- c(NA,m)

for (i in 1:m){
  sample_means[i] <- sample(df$age,n)
}

length(sample_means)
df1 = data.frame(xbar = sample_means)
head(df1)

dev.new(width=1,height=1)
ggplot(data=df1,aes(xbar)) +
  geom_histogram(aes(y=..density..),bins=10,col="red",fill="grey")+
  geom_density(col="blue",size =2)+
  
  stat_function(fun =dnorm,
                args = list(mean = mean(df1$xbar),sd=sd(df1$xbar)),
                col = "black", size = 1)

dev.new(width=1,height=1)
ggplot(data=df1,aes(sample=xbar)) +
  stat_qq(col="red")+
  stat_qq_line(col= "blue")

#tip variable in the tips data set
#-----------------------------

dev.new(width=1,height=1)
ggplot(data=tips,aes(tip)) +
  geom_histogram(aes(y=..density..),bins=10,col="red",fill="grey")+
  geom_density(col="blue",size =2)

# sample from a non-normally distributed population, n>=30
# (Rule IV)L If x has mean=mu, sigma=sigma, and n>=30, then by the CLT,
# xbar ~~(approx.) normal(mean=mu, sigma(xbar)=sigma(x)/sqrt(n))

n <- 40
m <- 10000

sample_means <- c(NA,m)

for (i in 1:m){
  sample_means[i] <- mean(sample(tips$tip,n))
}
length(sample_means)

df2 <- data.frame(xbar= sample_means)
head(df2)

dev.new(width=1,height=1)
ggplot(data=df2,aes(xbar)) +
  geom_histogram(aes(y=..density..),bins=10,col="red",fill="grey")+
  #geom_density(col="blue",size =2)

  stat_function(fun =dnorm,
              args = list(mean = mean(df2$xbar),sd=sd(df2$xbar)),
              col = "black", size = 1)
