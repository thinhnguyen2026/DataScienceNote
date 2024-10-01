# Week 4, Monday, September 9, 2024
#----------------------------------------------

#while()

n <- 20
x <- 5

while (x<n){
  if (x == 13){
    break
  }
  print(X)
  x <- x - 1
}

#while()

n <- 20
x <- 5

while (x<n){
  if (x == 13){
    x < x + 1
    next
  }
  print(X)
  x <- x - 1
}

# Function in R
#-------------------
#Write an R function for y = f(x)=5x +2

myFunction <- function(X){
  outcome <- 5*X+2
  return(outcome)
  cat("The final answer for x = ",x, "is", outcome,".",sep ="")
}
myFunction(10)

#Write an R function for y = f(x) = mx + b

function2 <- function(m,x,b){
  outcome <- m*x+b
  return(outcome)
}
function2(1,1,1)

#Write an R function to convert a temperature value from calcius to farenheit.
# Formula: C/5 = (F-32)/9

function3 <- function(X){
  outcome <- X/5*9+32
  #return(outcome)
  print(paste("The temperature of", X, "degrees (in C) converts to", outcome, "degrees (in F)"))
}
function3(20)

#Exercise: write an R function to separate even and off numbers from a vector
# (or R object) using for()

x <- c(7, 8, 9, 10, 6, 7, 7, 8, 9, 10)
oddnumber = {}
evennumber = {}
for (a in x){
  if (a%%2 == 1){
    oddnumber <- append(oddnumber,a)
  }
  else{
    evennumber <- append(evennumber,a)
  }
}
print(oddnumber)
print(evennumber)

evenodd <- function(x){
  even <- c()
  odd <- c()
  n <- length(x)
  
  for (i in 1:n){
    if (x[i]%%2==0) even[i] <- x[i]
    else odd[i] <- x[i]
  }
  cat("The even numbers are:",even[!is.na(even)],
    "\n The odd numbers are:",odd[!is.na(odd)])
}
evenodd(x)
