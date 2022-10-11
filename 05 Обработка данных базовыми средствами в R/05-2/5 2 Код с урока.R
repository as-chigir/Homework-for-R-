# ============= Choosing elements =============

mycars <- mtcars
mycars

# single element
mycars[3, 2] <- 6
mycars

# row and column
mycars[2, ]
mycars[, 3]

# multiple rows or columns
mycars[2:4, ]
mycars[, 2:3]

mycars[c(2, 5, 8), ]
mycars[, c(2, 4)]

# choosing elements by names
mycars["Mazda RX4", "cyl"]
mycars["Mazda RX4", c("cyl", "hp")]

# transposing
t(mycars)
class(t(mycars))

mycars2 <- as.data.frame(t(mycars))
mycars2
