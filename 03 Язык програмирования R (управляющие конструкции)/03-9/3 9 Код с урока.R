# lapply and sapply

round(c(2.4, 6.7, 8.1))

income <- list(c(30, 55, 45), c(40, 25, 30))

max(income)

lapply(income, max)

sapply(income, max)

v <- c("www.champ.info/apples ",
       "www.champ.info/blue_screens ",
       "www.champ.info/code_monsters ")

strsplit(v, "/")

strsplit(v[2], "/")[[1]][2]

res1 <- trimws(strsplit(v[2], "/")[[1]][2])
res1

res2 <- unlist(strsplit(res1, "_"))
res2

res3 <- paste(res2, collapse = " ")
res3

final <- tools::toTitleCase(res3)
final

my_trans <- function(s){
  res1 <- trimws(strsplit(s, "/")[[1]][2])
  res2 <- unlist(strsplit(res1, "_"))
  res3 <- paste(res2, collapse = " ")
  final <- tools::toTitleCase(res3)
  final
}

teams <- sapply(v, my_trans)
unname(teams)





