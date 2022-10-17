# if-else structure

money <- 45

if (money > 60){
  print("Yes")
} else {
  print("No")
}

if (money < 0 | money > 10000){
  print("Something went wrong")
}

cities <- c("Мурманск", "Киров", "Пермь")
city <- "Омск"

if (city %in% cities){
  print("No need to add")
} else{
  cities <- c(cities, city)
}

cities

