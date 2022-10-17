### Практическое задание 1 ###


### Задача 1 ###

# Создайте файл Google Spreadsheet с названием Nature и поместите в него:
# •	лист Trees со встроенным в R датафреймом trees;
# •	лист Geyser со встроенным в R датафреймом faithful.


install.packages('googlesheets4')

library(googlesheets4)
gs4_auth()

gs4_create(name = "Nature", sheets = list(`Trees` = trees,
                                          `Geyser` = faithful))


### Задача 2 ###

# Запросите help по функции sheet_copy(). Скопируйте лист Trees, воспользовавшись
# этой функцией и поместите его копию перед листом Trees.

?sheet_copy

sheet_copy(
  from_ss = "https://docs.google.com/spreadsheets/d/1uZHA4iVAX1e19SMMA1Y8NQK07RG3mmpp_BKeB_0xPQY/edit#gid=271068787",
  from_sheet = "Trees",
  to_sheet = "Trees_copy",
  .before = 1
)


### Задача 3 ###

# Сохраните в датафрейм from_gs данные с копии листа Trees.


ss <- "https://docs.google.com/spreadsheets/d/1uZHA4iVAX1e19SMMA1Y8NQK07RG3mmpp_BKeB_0xPQY/edit#gid=271068787"
from_gs <- as.data.frame(read_sheet(ss, sheet = "Trees_copy"))

