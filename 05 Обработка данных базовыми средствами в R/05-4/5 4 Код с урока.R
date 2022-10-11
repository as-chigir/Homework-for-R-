# ================ Load data ================

setwd("/Users/allat/Desktop")
avo <- read.csv("avocado_new.csv")
View(avo)


# =============== Decribe data ==============

str(avo)
summary(avo)

head(avo)
head(avo, 10)
tail(avo)

# ================ Delete NA ================

avo <- na.omit(avo)

# ======= Row names and column names ========

head(rownames(avo))

colnames(avo)
colnames(avo) <- tolower(colnames(avo))
head(avo, 2)
