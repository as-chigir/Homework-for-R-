### Практическое задание 1 ###


### Задача 1 ###

# Создайте датафрейм test из следующих векторов (вектора должны идти по столбцам датафрейма):
# v1 <- c(1, 2.5, "organic")
# v2 <- c(2, 1.5, "organic")
# v3 <- c(3, 0.9, "conventional")

test <- data.frame(v1 = c(1, 2.5, "organic"),
                   v2 = c(2, 1.5, "organic"),
                   v3 =c(3, 0.9, "conventional"))
test


### Задача 2 ###

# Транспонируйте полученный датафрейм test.
# Превратите полученный после транспонирования объект в датафрейм (тип data.frame) и
# сохраните результат в переменную trans.test.

trans.test <- as.data.frame(t(test))
trans.test


### Задача 3 ###

# Проверьте типы столбцов в trans.test.
# Если типы столбцов некорректны, исправьте это, обращаясь к столбцам по их индексам.

str(trans.test)


trans.test[,1] <- as.integer(trans.test[,1])
trans.test[,2] <- as.numeric(trans.test[,2])

str(trans.test)
