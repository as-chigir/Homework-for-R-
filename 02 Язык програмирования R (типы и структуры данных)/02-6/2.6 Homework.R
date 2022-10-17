### «адача 1### 

# —оздайте список Hogwarts, который содержит следующие элементы:
#  Х элемент type Ц строка со значением Уschool of witchcraft and wizardryФ;
# Х элемент location Ц строка со значением УscotlandФ;
# Х элемент houses Ц факторный вектор со значени€ми Gryffindor, Hufflepuff, Ravenclaw, Slytherin
# (факторные переменные можно получать и из строковых тоже).

Hogwarts <- list(type = "school of witchcraft and wizardry",
                 location = "scotland",
                 houses = factor(c("Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"))
                 )
Hogwarts



### «адача 2 ### 

# ќбраща€сь к элементам списка, исправьте значение УscotlandФ в списке Hogwarts на УScotlandФ

Hogwarts$location <- "Scotland" # or Hogwarts[[2]] <- "Scotland"



### «адача 3 ### 

# »спользу€ список Hogwarts, выведите на экран сообщение УThere are 4 houses in Hogwarts.Ф
# »спользовать готовое число 4 нельз€, нужно получить его, обраща€сь в элементам списка и
# примен€€ необходимые функции.

message <- paste("There are", length(Hogwarts$houses), "houses in Hogwarts.", sep=" ")
message   # or cat("There are", length(Hogwarts$houses), "houses in Hogwarts.")



### «адача 4 ### 

# ƒобавьте в конец списка Hogwarts элемент n_houses со значением 4.

Hogwarts[[n_houses]] <- 4
Hogwarts
