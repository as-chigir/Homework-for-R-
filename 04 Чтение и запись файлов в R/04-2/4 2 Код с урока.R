
# example of CSV format
# user1;26;F;36,5
# user2;32;M;37,2

# tabulation
# \t

# loading csv-files
dat <- read.csv("avocado.csv")
View(dat)

# changing the separator
dat2 <- read.csv("avocado2.csv", sep = ";")
dat2 <- read.csv2("avocado2.csv")

# changing decimal separator
dat3 <- read.csv("avocado3.csv", sep = ";", dec = ",")
str(dat3)

# working with encodings
read.csv("test.csv", encoding = "WINDOWS-1251")
read.csv("test.csv", encoding = "UTF-8")

Sys.setlocale("LC_CTYPE", "ru_RU.UTF-8")





