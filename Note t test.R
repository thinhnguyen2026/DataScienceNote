# Week 8, Monday, October 7, 2024
#------------------------------------

df <- read.csv("reading.csv")
df
str(df)

# Normallity conditions
# Using boxplot

library(ggplot2)
dev.new(width=1, height=1)
ggplot(data=df,aes(x="",y=SCORE,fill=METHOD))+
  geom_boxplot()+
  facet_wrap(~METHOD)+

# Spacing between facets
theme(panel.spacing = unit(3,"cm"),
      legend.position = "none")+
  xlab("")

# Exercise: check normality using Q-Q plot
ggplot(df, aes(sample = SCORE)) +
  stat_qq() +
  stat_qq_line() +
  facet_wrap(~METHOD) + 
  theme(panel.spacing = unit(3, "cm")) +
  labs(title = "Q-Q Plot for Each Method", 
       x = "Theoretical Quantiles", 
       y = "Sample Quantiles")

# Check equal variance condition (that is, sigma1^2=sigma2^2)

# s1 = standard deviation of the sample taken from New Method
# s2 = standard deviation of the sample taken from Standard Method

new <- df[df$METHOD == "NEW",]
new

std <- df[df$METHOD=="STD",]
std

# Exercise: Try using subset() to create two different data frames

s1 <- sd(new$SCORE);s1
s2 <- sd(std$SCORE);s2
s1/s2

# Confidence Interval
t.test(new$SCORE,std$SCORE, var.equal = TRUE, conf.level = .95)

# Hypothesis Test
score <- read.csv("score.csv")
score

summary(score)

# Check all those conditions to use t-test
# Noremality
# Equal variances

t.test(new$SCORE, std$SCORE, var.equal = TRUE, conf.level = .95)

s1 <- sd(score$class1)
s2 <- sd(score$class2)

s1/s2

#t-test
t.test(score$class1,score$class2,
        alternative = "two.sided",
        mu = 0,
        var.equal =TRUE)

# Decision: since p-value = 0.405 > alpha =0.05, we do not reject the null hypothesis