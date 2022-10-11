# ========== Install and load ==========

install.packages("tidyverse")
library(tidyverse)

# ============= Load data ==============

setwd("/Users/allat/Desktop")
cpi <- read.csv("CPI2019.csv", sep = ";")

# =========== Pipe examples ============

cpi %>% View
cpi %>% head(10) %>% View  

