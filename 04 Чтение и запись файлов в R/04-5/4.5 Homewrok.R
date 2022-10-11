install.packages("readxl")
library(readxl)

### Практическое задание 3### 


### Задача 1 ### 

# Загрузите в R данные из листа Version 02 файла fruits.xls.

setwd("C:/Users/alexandra_c/Desktop/Уроки R/Практические задания/04-5")
ex2 <- read_excel("fruits.xlsx", sheet = "Version 02")


### Задача 2 ###

#Напишите функцию check(), которая принимает на вход название файла Excel и
# номер листа и, если на листе в данных число строк совпадает с числом столбцов,
# возвращает значение TRUE, если нет – FALSE.

check <- function(name, number_sheet){
  file_ex <- read_excel(name, sheet = number_sheet)
  if (dim(file_ex)[1] == dim(file_ex)[2]){
    print("TRUE")
    }else {
      print("FALSE")
    }
}
check("fruits.xlsx", 2)
