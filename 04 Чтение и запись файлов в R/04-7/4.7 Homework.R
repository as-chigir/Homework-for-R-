### Практическое задание 4 ##

# Выгрузите в формат CSV встроенный в R датафрейм InsectSprays, назвав файл Insects.csv.

InsectSprays

setwd("C:/Users/alexandra_c/Desktop/Уроки R/Практические задания/04-7")
write.csv(InsectSprays, "Insects.csv")


### Задача 2 ###

# 1.	Загрузите в R данные по пассажирам «Титаникаc из файла titanic_small.csv.

titan <- read.csv("titanic_small.csv")

# 2.	Переименуйте столбцы таким образом, чтобы названия стали следующими:
# ID, gender, class, price.
# Подсказка: используйте функцию colnames().

?colnames
colnames(titan) <- c("ID", "passenger", "gender", "class", "price")
titan

# 3.	Выгрузите обновленный файл в формате Excel с расширением .xlsx.

# install.packages("openxlsx")

library(openxlsx)
write.xlsx(titan, "titan_new.xlsx")
