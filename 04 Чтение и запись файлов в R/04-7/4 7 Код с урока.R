# writing csv
write.csv(mtcars, "mtcars.csv")

# checking
test1 <- read.csv("mtcars.csv")
View(test1) # все, как надо

# writing csv with ; as delimiter
write.csv2(mtcars, "mtcars2.csv")

# help
?write.csv

# writing txt
write.table(mtcars, "mtcars.txt")

# writing Excel files
install.packages("WriteXLS")
library(WriteXLS)

WriteXLS(mtcars, "mtcars.xls")
cars
WriteXLS(c("mtcars", "cars"), "cars.xlsx")

?WriteXLS
