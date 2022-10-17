# ================ Installation and loading ================

install.packages("googlesheets4")
library(googlesheets4)
gs4_auth()

# ================ Reading a sheet ================

dat <- read_sheet(ss = "https://docs.google.com/spreadsheets/d/1WFJv_rsE5N4fCnqj6PZRQfOIwgrYZK6R2dv-L6wYav8/edit?usp=sharing")
dat
class(dat)

  
link <- "https://docs.google.com/spreadsheets/d/10LtbtQLY2J8Ki0CEX_c_s-NeOgxZi80yqUzb6DYp1iM/edit?usp=sharing"
dat <- link %>% read_sheet

dat2 <- read_sheet(link, sheet = "test") # sheet = 2
dat2

# ================ Creating a new spreadsheet ================

gs4_create("My test")

l <- "https://docs.google.com/spreadsheets/d/10LtbtQLY2J8Ki0CEX_c_s-NeOgxZi80yqUzb6DYp1iM/edit?usp=sharing"

mtcars

# ================ Adding and deleting sheets ================

sheet_write(mtcars, ss = l, sheet = "cars")

sheet_delete(ss = l, sheet = "Лист1")

sheet_append(ss = l, data = mtcars[1:5, ], sheet = "cars")

# ================ Creating a new spreadsheet with multiple sheets ================

gs4_create(name = "R datasets", sheets = list(`R mtcars` = mtcars, `R iris` = iris))








