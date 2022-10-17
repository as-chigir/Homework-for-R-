# ================ Comparing tibbles and data frames ================

library(tidyverse)

N <- iris %>% group_by(Species) %>% summarise(`число ирисов` = n())
class(N)

ord <- data.frame(x = 1:5, y = letters[1:5])
ord

tib <- tibble(x = 1:5, y = letters[1:5])
tib

ord2 <- data.frame(x = 1:5, `x 2` = 0)
ord2

tib2 <- tibble(x = 1:5, `x 2` = 0)
tib2

tibble(x = 20:30, y = log(x))

data.frame(x = 20:30, y = log(x))

k <- ord2[1, 2]
class(k)

l <- tib2[1, 2]
class(l)
l

iris_tib <- as_tibble(iris)
class(iris_tib)

dat <- as.data.frame(iris_tib)
class(dat)

