### Практическое задание 3 ###

### Задача 1 ###

# Загрузите файл Chile.csv с данными по опросу перед референдумом 1988 года в Чили,
# которые обсуждались в предыдущем практическом задании. Сохраните данные в датафрейм chile.

chili <- read.csv("Chile.csv")


### Задача 2 ###

# Заполните пропущенные значения в столбце income медианными значениями дохода,
# сохраните изменения в датафрейме.

library(tidyverse)
chili <- chili %>%mutate(income = ifelse(is.na(income), median(income, na.rm = TRUE), income))

### Задача 3 ###

# Заполните пропущенные значения в столбце education таким образом,
# чтобы NA заменялось на значение из ячейки сверху.

chili <- chili %>% fill(education, .direction = "down")

### Задача 4 ###

# Заполните пропущенные значения в столбце vote таким образом,
# чтобы NA заменялось на значение из ячейки снизу.

chili <- chili %>% fill(vote, .direction = "up")

### Задача 5 ###

# Проверьте, остались ли в датафрейме строки с пропущенными значениями.
# Если да, выясните, что это за строки и заполните NA, выбрав способ по своему усмотрению.

sum(is.na(chili))
chili[!complete.cases(chili),]

chili <- chili %>%mutate(age = ifelse(is.na(age), mean(age, na.rm = TRUE), age),
                         statusquo = ifelse(is.na(statusquo), mean(statusquo, na.rm = TRUE), statusquo))
sum(is.na(chili))
