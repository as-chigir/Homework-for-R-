# ================ Separate and unite ================

url <- "https://docs.google.com/spreadsheets/d/1xWz1ZR-9JnphGds7JkNK1rV8UwscAfJnT8MInDA5wM0/edit?usp=sharing"

test <- read_sheet(url)

test %>% separate(col = user, into = c("name", "surname"), sep = " ")
test %>% separate(col = user, into = c("name", "surname"), sep = " ", remove = FALSE)

test %>% separate(col = sex, into = c(NA, "sex"))

addr <- data.frame(city = c("Москва", "Санкт-Петербург", "Пермь"), 
           street = c("Мясницкая ул.", "Кантемировская ул.", "Студенческая ул."), 
           house = c("20", "3А корп.1", "38"))
addr

addr %>% unite("address", city:house, remove = FALSE, sep = ",")

