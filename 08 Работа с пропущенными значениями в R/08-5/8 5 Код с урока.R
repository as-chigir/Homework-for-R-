######## FILLING NA WITH MEAN OR MEDIAN ########

tit <- read.csv("Titanic.csv")
summary(tit$Age)

tit <- tit %>% mutate(Age = ifelse(is.na(Age), 
                                   mean(Age, na.rm = TRUE), Age))

tit <- read.csv("Titanic.csv")
tit <- tit %>% mutate(Age = ifelse(is.na(Age), 
                                   median(Age, na.rm = TRUE), Age))

tit <- read.csv("Titanic.csv")

######## FILLING NA WITH VALUES BELOW OR ABOVE ########

tit <- tit %>% fill(Age, .direction = "down")
tit <- tit %>% fill(Age, .direction = "up")
