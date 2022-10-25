######## COUNTING CELLS WITH NA ########

tit <- read.csv("Titanic.csv")

is.na(tit)
dim(is.na(tit))
sum(is.na(tit))

######## COUNTING ROWS WITH NA ########

head(complete.cases(tit))
length(complete.cases(tit)) == nrow(tit)

head(!complete.cases(tit))
sum(!complete.cases(tit))

######## FILTERING ROWS WITH NA ########

with_na <- tit[!complete.cases(tit), ]
View(with_na)

table(rowSums(is.na(with_na)))

######## ONE MORE EXAMPLE ########

small <- data.frame(x = c(1, NA, 4, NA),
                    y = c(5, NA, 7, 8),
                    z = c(4, 2, 6, 9))
small
sum(is.na(small))
sum(!complete.cases(small))
