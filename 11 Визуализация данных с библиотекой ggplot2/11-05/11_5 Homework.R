### Практическое задание 4 ### 



### Задача 1 ### 

# Создайте таблицу с частотами:
  
# Возраст	Число респондентов
#     18-21	20
#     21-24	24
#     24-27	32
#     27-30	43

# На основе этой таблицы создайте столбчатую диаграмму.
# Измените цвета (выберите другую цветовую палитру).

age <- c("18-21", "21-24", "24-27", "27-30")
num_resp <- c(20, 24, 32, 43)
tab <- cbind.data.frame(age = age, num_resp = num_resp)
tab

library(tidyverse)

ggplot(data = tab, aes(x = age, y = num_resp, fill = age)) + 
  geom_bar(stat = "Identity") + 
  scale_fill_brewer(palette = "Set4") + 
  theme_dark()

###  Задача 2 ### 

#  На основе таблицы из задачи 1 создайте круговую диаграмму.
# Измените цвета, задав новую последовательность цветов вручную.

cols <- colors()[5:10]

ggplot(data = tab, aes(x = factor(1), y = num_resp, fill = age)) + 
  geom_bar(stat = "Identity", width = 1) + 
  coord_polar("y") + 
  scale_fill_manual(values = cols) +
  theme_gray()
