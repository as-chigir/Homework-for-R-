#### Практическое задание 2 ###



### Задача 1 ### 

# Загрузите данные из файла chip-n-dale.csv и сохраните их в датафрейм mult.

setwd("C:/Users/alexandra_c/Desktop/Уроки R/Практические задания/09 Работа с порядковыми и категориальными данными в R/09-4")
mult <- read.csv("chip-n-dale.csv")
str(mult)

### Задача 2 ### 

# Преобразуйте столбец fav, сделав его факторным.

library(tidyverse)
mult <- mult %>% mutate(fav = as.factor(fav))
str(mult)

### Задача 3 ### 

# Измените уровни факторного столбца таким образом, чтобы они стали следовать в таком порядке:
#  Chip, Dale, Monty, Gadget, Zipper.


mult <- mult %>% mutate(assoc = factor(assoc,
                                     levels = c("Chip", "Dale", "Monty", "Gadget", "Zipper"),
                                     ordered = TRUE))
str(mult)

### Задача 4 ### 

# Приведите столбец cheeze к факторному типу,
# а потом корректным образом превратите его обратно   в числовой.

mult <- mult %>% mutate(cheeze = as.factor(cheeze))
str(mult)

mult <- mult %>% mutate(cheeze = as.numeric(levels(cheeze))[cheeze])
str(mult)
