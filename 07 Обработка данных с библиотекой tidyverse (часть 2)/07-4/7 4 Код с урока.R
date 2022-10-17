# ================ Spread and gather ================

ss <- "https://docs.google.com/spreadsheets/d/16VVqnnSVK9b7e2G9z-iErsHO4sMF0KTqV6aMfcWRlig/edit?usp=sharing"

stud <- read_sheet(ss, sheet = "spread")
stud

stud %>% spread("Course", "Grade")

firms <- read_sheet(ss, sheet = "gather")
firms %>% gather("Type", "Expenditure", A:C)
firms %>% gather("Type", "Expenditure", 2:4)
firms %>% gather("Type", "Expenditure", -firm)
