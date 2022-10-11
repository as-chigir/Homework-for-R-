### Практическое задание 4 ###


### Задача 1 ### 

# Запросите help по встроенному в R датафрейму USJudgeRatings.
# Посмотрите на этот датафрейм.

install.packages("stargazer")
library(stargazer)
setwd("C:/Users/alexandra_c/Desktop/Уроки R/Практические задания/06-8")

?USJudgeRatings

### Задача 2 ###

# Используя библиотеку stargazer, выгрузите в файл с расширением .htm следующие характеристики:
# •	минимальное и максимальное значение всех рейтингов качества работы судей;
# •	медианное значение рейтингов качества работы судей.
# Добавьте заголовок US Judge Ratings. Сделайте так, чтобы в выдаче все числа
# были представлены с точностью до второго знака после запятой.

stargazer(USJudgeRatings,
          type = "html",
          out = "Sum_JudgeRatings.htm",
          omit.summary.stat = c("N", "Mean", "Sd"),
          median = TRUE,
          title = "US Judge Ratings",
          digits = 2)


