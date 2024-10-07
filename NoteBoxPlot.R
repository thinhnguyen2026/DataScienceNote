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
  facet_wrap(~METHOD)
