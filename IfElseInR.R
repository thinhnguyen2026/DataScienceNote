# Week 3, Wednesday, September 4, 2024
#--------------------------------------

# if()
#-------------------------------------

x <- 10
y <- 16

if (x>y){
  cat(x, " is greater than ", y, ".", sep="")
} else {
  cat(x, " is less than ", y,".", sep ="")
}
# Alternative
x <- 10
y <- 16
if (x>y) cat(x, " is greater than ", y, ".", sep="") else cat(x, " is less than ", y,".", sep ="")

# if ... else, if ... else
x <- 10
y <- 16

if (x>y){
  cat(x, " is greater than ", y, ".", sep="")
} else if (x<y){
  cat(x, " is less than ", y,".", sep ="")
} else {
  cat(x, " is equal to ", y,".", sep ="")
}


# ifelse
#------------------------------------

x <- c(10, 8, 9, 7, 10)
ifelse(x<9,1,0)



x <- c(2,4,5,6,8, 10)

ifelse(x<=4, 1, 
       ifelse((x>4 & x<8), 2, 3)

# Create a vector of numbers
numbers <- c(3, 7, 12, 5, 10, 1)
       
# Use nested ifelse to categorize numbers
categories <- ifelse(numbers > 10, "Large", 
                     ifelse(numbers >= 5 & numbers <= 10, "Medium", "Small"))
       
# Print the result
categories

# for() loop
#--------------------------------------------
x<-c(10, 8, 9, 7, 19)

#Want to find the even number(count) from x

n <- length(x)
n

count <- 0
for (i in 1:n){
  if(x[i] %% 2 == 0) count <- count + 1
}
count

# Do the odd count.
n <- length(x)
n

oddcount <- 0
for (i in 1:n){
  if(x[i] %% 2 == 1) oddcount <- count + 1
}
oddcount

# Do both using for() loop and one of the if() statements
evencount <- 0
oddcount <- 0

for (i in 1:n){
  if(x[i]%%2>0) oddcount <- oddcount + 1
  else evencount <- evencount+1
}
print(oddcount)
print(evencount)