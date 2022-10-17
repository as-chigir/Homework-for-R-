
# types in R

age <- 32.5
name <- "Alla"

one <- TRUE
zero <- FALSE

one <- T
zeo <- F

binary <- c(0, 1, 0, 1)

s <- 10:20

# FAV_NET numeric 1 - VKontante, 2 - Facebook, 3 - Instagram, 4 - Other

FAV_NET <- c(1, 1, 2, 3, 1, 2, 4)
FAV_NET

FAV_NET[FAV_NET == 3]

mean(FAV_NET)

FAV_NET <- factor(c(1, 1, 2, 3, 1, 2, 4))
FAV_NET

mean(FAV_NET)

# numeric
# integer
# logical
# character
# factor 

class(age)
class(name)
class(zero)
class(s)
class(FAV_NET)

# type conversion in R

nums <- c("2.5", "8.2", "7.4", "9", "3.5")
nums <- as.numeric(nums)

# as.numeric()
# as.integer()
# as.character()
# as.factor()
# as.logical()

nums2 <- c("2,5", "8,2", "7,4", "9", "3,5")
nums2
as.numeric(nums2)

nums2 <- as.numeric(gsub(",", ".", nums2))
nums2

ints <- as.integer(c(2.0, 3.7, 3.0))
ints

is.integer(ints)

mixed1 <- c(2, "one", 6, 7)
class(mixed1)

mixed2 <- c(1, 0, TRUE, FALSE)
class(mixed2)
