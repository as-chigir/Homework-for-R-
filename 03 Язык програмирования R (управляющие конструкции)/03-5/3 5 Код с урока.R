# for loop

cities <- c("Мурманск", "Киров", "Пермь")
to.check <- c("Омск", "Москва", "Киров", "Калининград", "Пермь")

for (i in to.check) {
  print(i)
}

for (i in to.check) {
  if (i %in% cities) {
    print("No need to add")
  } else{
    cities <- c(cities, i)}
}

cities

# while loop

err <- 0.1
while (err >= 0.05){
  print("Model training")
  err <- err - 0.005
  print(err)
}
