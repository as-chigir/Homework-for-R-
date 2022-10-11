### Практическое задание 4 ###


### Задача 1 ###

# Напишите функцию bmi(), которая запрашивает у пользователя с клавиатуры его рост в сантиметрах и
# вес в килограммах (считайте, что пользователь вводит два числа отдельно, с новой строки) и
# возвращает индекс массы тела, округленный до целого значения. Индекс массы тела считается так:

# BMI = m / h ** 2

# где m – масса тела в килограммах, h – рост в метрах.
# Пjдсказка. Для запроса значения с клавиатуры в R используется функция readline().


?readline

bmi <- function(m, h){
  m <- as.numeric(readline(prompt = "Enter your weight in kg: "))
  h <- as.numeric(readline(prompt = "Enter your height in m: "))
  round(m / h ^ 2)
}

bmi()

### Задача 2 ###

# Напищите функцию hello(), которая просит пользователя ввести свое имя, и
# если оно совпадает Вашим, выводит на экран “[Name], welcome to R! I missed you”,
# если не совпадает, то выводит на экран “Sorry, R is not available now”.
# Подразумевается, что R знает Ваше имя (оно сохранено в отдельную переменную).

hello <- function(your.name){
  my.name <- "Alex"
  your.name <- readline(prompt = "Enter your name: ")
  if (your.name == my.name){
    cat(your.name, ", welcome to R! I missed you.", sep = "")
  } else {
    print("Sorry, R is not available now")
  }
} 

hello()


### Задача 3 ###

# Напишите функцию describe_mat(), которая принимает на вход числовую матрицу и
# возвращает поименованный вектор из следующих характеристик:
# - rows: число строк матрицы;
# - cols: число столбцов матрицы;
# - means: вектор из двух элементов, среднее по строкам и среднее по столбцам.

new.matrix <- matrix(1:9, ncol = 3, nrow = 3)

describe_mat <- function(n){
  rows <- length(rowSums(n))
  cols <- length(colSums(n))
  means <- c(colMeans(n),rowMeans(n))
  vec <- c("num_of_rows" = rows, "num_of_cols" = cols, "rows_and_cols_means" = means)
  vec
}

describe_mat(new.matrix)
