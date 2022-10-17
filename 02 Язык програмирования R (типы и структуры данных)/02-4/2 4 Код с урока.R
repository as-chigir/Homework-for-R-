# matrices from vectors

age <- c(24, 26, 17)
gender <- c(0, 1, 0)

mcols <- cbind(age, gender)
mcols

mrows <- rbind(age, gender)
mrows

# matrices from sequences or elements

matrix(1:12, ncol = 3, nrow = 4)
matrix(1:12, ncol = 3, nrow = 4, byrow = TRUE)

matrix(0, ncol = 2, nrow = 4)

sex <- c("M", "F", "M")

cbind(age, sex)

# changing elements of matrices

m <- matrix(1:20, nrow = 4, ncol = 5)
m

m[2, 3] <- 0
m

m[2, ]
m[, 3]

# adding names of rows/columns

rownames(m) <- letters[1:4]
m

colnames(m) <- month.name[1:5]
m

tut_one <- rbind(c(30, 40), c(40, 40), c(30, 60))
rownames(tut_one) <- month.abb[4:6]
tut_one

# operations with matrices

tut_two <- tut_one * 2
tut_two

tut_one + tut_two

rowSums(tut_one)
colSums(tut_one)
rowMeans(tut_one)
colMeans(tut_one)

# example of data frame

dat <- cbind.data.frame(age, sex)
dat

str(dat)
