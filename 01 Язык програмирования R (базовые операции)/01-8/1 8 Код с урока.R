### Lesson 5 ###

# vectors

v <- c(2, 5, 8)
v

sales <- c(30, 80, 24, 67, 90, 32, 24)
length(sales)

# vector elements

sales[1]
sales[0]
sales[length(sales)]

sales[c(1, 3, 6)]
sales[1, 3, 6]

sales[1:3]

sales[1] <- 44
sales

sales[2:3] <- c(56, 88)
sales

# filtering

sales[sales > 30]

sales[sales <= 32]

sales[sales == 24]

which(sales == 24)
which(sales > 30)

# vector operations

sales ** 2

v1 <- c(0, 1, 4)
v2 <- c(8, 9, 2)
v1 + v2
v1 - v2

round(c(3.4, 5.7, 0.1))

v2
sum(v2)
prod(v2)

# sorting

sort(v2)
sort(v2, decreasing = TRUE)



