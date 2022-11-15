####### GGPLOT2 BASICS #######

####### load data #######

library(readxl)
regs <- read_excel("data.xls")

####### basic histogram #######

library(tidyverse)

ggplot(data = regs, aes(x = X10)) + geom_histogram()

ggplot(data = regs, aes(x = X10)) + 
  geom_histogram(binwidth = 500, fill = "lightblue", color = "darkblue")

####### detecting extreme values #######

regs %>% filter(X10 > 10000) %>% select(REG)

####### changing theme #######

ggplot(data = regs, aes(x = X10)) + 
  geom_histogram(binwidth = 500, fill = "lightblue", color = "darkblue") + 
  theme_bw()

####### adding labels #######

ggplot(data = regs, aes(x = X10)) + 
  geom_histogram(binwidth = 500, fill = "lightblue", color = "darkblue") + 
  theme_bw() + 
  labs(title = "Стоимость минимального набора продуктов питания",
       x = "стоимость в октябре 2020",
       y = "частота")

####### adding vertical lines #######

ggplot(data = regs, aes(x = X10)) + 
  geom_histogram(binwidth = 500, fill = "lightblue", color = "darkblue") + 
  theme_bw() + 
  labs(title = "Стоимость минимального набора продуктов питания",
       x = "стоимость в октябре 2020",
       y = "частота") + 
  geom_vline(xintercept = mean(regs$X10), lty = 2, color = "red")

####### basic density plot #######

ggplot(data = regs, aes(x = X10)) + 
  geom_density(fill = "lightblue", color = "darkblue") + 
  theme_bw() + 
  labs(title = "Стоимость минимального набора продуктов питания",
       x = "стоимость в октябре 2020",
       y = "плотность")
