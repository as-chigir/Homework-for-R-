# installing libraries
install.packages("readxl")

# loading libraries
library(readxl)

# loading Excel files
ex <- read_excel("test.xlsx")
View(ex)

# choosing a sheet
ex <- read_excel("test.xlsx", sheet = 2)

help(read_excel)
