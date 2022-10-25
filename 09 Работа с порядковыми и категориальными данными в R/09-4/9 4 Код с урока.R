######## CHANGING LEVELS WITH TIDYVERSE ########

setwd("/Users/allat/Desktop")
chile <- read.csv("Chile.csv")
str(chile)

library(tidyverse)
chile <- chile %>% mutate(region = as.factor(region))
str(chile)

chile <- chile %>% mutate(sex = factor(sex, levels = c("M", "F")))
str(chile$sex)

chile <- chile %>% mutate(education = factor(education, levels = c("P", "S", "PS"),
                                             ordered = TRUE))
str(chile$education)

chile <- chile %>% mutate(age = as.factor(age))
chile <- chile %>% mutate(age = as.numeric(age))
str(chile$age)
summary(chile$age)

chile <- read.csv("Chile.csv")
chile <- chile %>% mutate(age = as.factor(age))

chile <- chile %>% mutate(age = as.numeric(levels(age))[age])
summary(chile$age)

age <- as.factor(chile$age)
levels(age)
head(as.numeric(levels(age))[age])
