# =================== Load data ======================

setwd("/Users/allat/Desktop")
avo <- read.csv("avocado_new.csv")
avo <- na.omit(avo)

# ================= Renaming columns =================

colnames(avo) <- tolower(colnames(avo))

# === Choosing columns and adding/deleting columns ===

avo$total.volume
avo$log.volume <- log(avo$total.volume)

str(avo)
View(avo)

avo <- avo[, -c(15)]

# ================== Filtering rows ==================

organic <- avo[avo$type == "organic", ]
head(organic)

avo[avo$type == "organic"]

avo2 <- avo[avo$type == "organic", 3:4]
head(avo2)

avo3 <- avo[avo$type == "organic", c(2, 4)]
head(avo3)

avo4 <- avo[avo$type == "organic", -c(2, 4)]
head(avo4)

cheap <- avo[avo$averageprice > 1 & avo$averageprice < 1.5, ]
head(cheap)

organic_cheap <- avo[avo$averageprice < 1.5 & avo$type == "organic", ]
head(organic_cheap)
