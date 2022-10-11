### Задача ###

# Напишите функцию check_id(), которая:

# - Принимает на вход название рабочей папки или путь к ней, делает указанную папку рабочей. 
# - Открывает все CSV-файлы в рабочей папке. Считайте, что в папке также могут быть файлы других форматов. 
# - Проверяет, есть ли среди столбцов столбец с названием ID. 
# - Создаёт датафрейм с двумя столбцами:
#         -- filename: название файла в рабочей папке; 
#         -- type: наличие столбца ID в файле в рабочей папке (0 — нет, 1 — есть). 
# Выгружает в файл info.xlsx датафрейм с полученной в пункте выше информацией.

# Подсказка: чтобы проверить, заканчивается ли название файла на определённое расширение,
# например на .csv, можно воспользоваться базовой функцией для строк endsWith(). 

library(openxlsx)
check_id2 <- function(s){
  setwd(s)
  list_files <- list.files(pattern="*.csv")
  info <- cbind.data.frame(filename = list_files,
                           type = c(NA))
  v <- c(1:length(list_files))
  for (f in list_files){
    dat <- read.csv(f)
    col_names <- colnames(dat)
    ifelse("ID" %in% col_names,
           v[which(list_files == f)] <- 1,
           v[which(list_files == f)] <- 0)
  }
  info$type <- v
  write.xlsx(info, "info2.xlsx")
}

check_id2("C:/Users/alexandra_c/Desktop/Уроки R/Практические задания/04-9 Практическая работа/Test3")



