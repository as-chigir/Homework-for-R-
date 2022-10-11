# loading txt-files
dat_cars <- read.table("cars.txt", sep = " ")
View(dat_cars)

# with header
dat_cars2 <- read.table("cars2.txt", header = TRUE)
dat_cars3 <- read.table("cars3.txt")

?read.table
