###### SCATTER PLOTS ######

flats <- read.csv("flats.csv")

plot(flats$kitsp, flats$price, 
     xlab = "Площадь кухни (кв. метры)",
     ylab = "Стоимость (тыс.долларов)")

plot(flats$kitsp, flats$price, 
     xlab = "Площадь кухни (кв. метры)", 
     ylab = "Стоимость (тыс. долларов)",
     log = "y")

plot(flats$kitsp, flats$price, 
     xlab = "Площадь кухни (кв. метры)",
     ylab = "Стоимость (тыс.долларов)",
     log = "y", 
     pch = 16)

??pch

plot(flats$kitsp, flats$price, 
     xlab = "Площадь кухни (кв. метры)",
     ylab = "Стоимость (тыс.долларов)",
     log = "y", 
     pch = 21,
     col = "royalblue",
     bg = "deepskyblue", 
     cex = 0.7)

flats$walk <- as.factor(flats$walk)
two <- c("violetred", "deepskyblue")[flats$walk]
two

plot(flats$kitsp, flats$price, 
     xlab = "Площадь кухни (кв. метры)",
     ylab = "Стоимость (тыс.долларов)",
     log = "y", 
     pch = 21,
     col = "royalblue",
     bg = two, 
     cex = 0.7)

###### LINE PLOTS ######

mon <- 1:12
income <- c(21000, 58000, 41000, 36000, 23000, 
            56000, 21000, 21000, 50000, 53000, 
            70000, 69000)
plot(mon, income, type = "b")
plot(mon, income, type = "o", pch = 16)

plot(mon, income, type = "o", pch = 16, 
     ylim = c(0, 250000), 
     xlab = "Месяц", 
     ylab = "Доход (в руб.)")
grid(nx = 12, ny = 10)

plot(mon, income, type = "o", pch = 16, 
     xlab = "Месяц", 
     ylab = "Доход (в руб)",
     ylim = c(0, 75000), 
     yaxt = "n")
axis(side = 2, at = seq(0, 75000, 5000), 
     labels = seq(0, 75, 5), 
     las = 2)

plot(mon, income, type = "o", pch = 16, 
     xlab = "Месяц", 
     ylab = "Доход (в руб)",
     ylim = c(0, 75000), 
     yaxt = "n")
axis(side = 2, at = seq(0, 75000, 5000), 
     labels = seq(0, 75, 5), 
     las = 2)
text(x = 7.5, y = 15000, "отпуск", col = "red")
grid(nx = 12, ny = 10)



