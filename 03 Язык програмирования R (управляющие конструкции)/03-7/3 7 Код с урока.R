# built-in functions

round(4.6)
sum(c(5, 0, 9))


# writing a function

fraud <- function(v){
  n <- length(v[v %% 5 == 0])
  n
}

fraud(c(4, 5, 15, 6, 17, 24, 10))

fraud <- function(v){
  n <- length(v[v %% 5 == 0])
  return(n)
}

fraud <- function(v){
  n <- length(v[v %% 5 == 0])
  print("Checking...")
  return(n)
}

fraud(c(4, 5, 15, 6, 17, 24, 10))

# multiple arguments

my.test <- function(x, y){
  x ** y
}


# multiple outputs

my.test(2, 4)

my.test <- function(x, y){
  res1 <- x ** y
  res2 <- y ** x
  return(c(res1, res2))
}

my.test(2, 4)
my.test(3, 4)




