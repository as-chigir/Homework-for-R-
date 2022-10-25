### Практическое задание 3 ### 

### Задача 1 ### 

# Преобразуйте столбец region в датафрейме chile таким образом,
# чтобы регионы были упорядочены по убыванию в соответствии с частотой их встречаемости.

setwd("C:/Users/alexandra_c/Desktop/Уроки R/Практические задания/09 Работа с порядковыми и категориальными данными в R/09-5")
chile <- read.csv("chile.csv")
table(chile$region)

library(tidyverse)
chile <- chile %>% mutate(region = fct_infreq(region))

### Задача 2 ### 

# Сделайте так, чтобы значения в столбце region, доля которых составляет менее 0.15,
# были заменены на слово "Other".

chile <- chile %>% mutate(region = fct_lump_prop(region, 0.15))
str(chile$region)

### Задача 3 ### 

# Объедините категории "S" и "SA" в столбце region в категорию "Santiago".

chile <- chile %>% mutate(region = fct_collapse(region, "Santiago" = c("S", "SA")))
str(chile$region)
