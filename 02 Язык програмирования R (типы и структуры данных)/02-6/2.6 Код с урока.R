
# creating a list

L <- list(c(21, 35, 42), c("T", "S", "H"))
L

class(L)

# working with elements

L[[1]]
L[[1]][2]

L[1]
class(L[1])
class(L[[1]])

L <- list(age = c(21, 35, 42), educ = c("T", "S", "H"))
L

L$age
L$age[3]

L[[2]][3] <- "S"
L

L[[3]] <- c(0, 1, 1)
L

# x^2 = 9

eq <- list(type = "quadratic", 
           solutions = c(-3, 3),
           solutions.dat = cbind.data.frame(x1 = -3, x2 = 3))
eq

eq$solutions.dat

# example of a model

res <- lm(cars$dist ~ cars$speed)
res

str(res)




