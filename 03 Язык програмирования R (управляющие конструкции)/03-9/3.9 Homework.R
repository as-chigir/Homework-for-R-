### ???????????? ??????? 5 ###


### ?????? 1 ###

# ??? ?????? dat, ????????? ?? ???? ???????? ???????? ? ??????? ????????? ??
# ????? (?????? ? ????????? ??????????):

dat <- c(c(12.5, 40, 45.5, 48),
         c(25, 45, 30.5, 47),
        c(37.5, 28, 30, 45))

# 1.1 	????????? ??? mean(dat).

mean(dat)

# 1.2.	????????? ??? sapply(dat, mean).

sapply(dat, mean)

# 1.3.	???????? ?????????? ?????? 1.1 ? 1.2.
# ???????? ????? ? ???, ??? ???????? ??????? mean() ??? ?????????? ? ???????? ? ????????? ??????????.



### ?????? 2 ###

# ??? ?????? ? ?????????? ???????????:

kino <- list(c(1, "????????? ?????????"),
             c(2, "????????? ????????"),
             c(3, "????????? ?????????"))


# ????????? ??????? ??? ????????? ????? ? ??????????????? ????????, ????????
# ????????? ?????? ?? ???????? ???????????:

  ## ??????? ?????? ???????

# ?????????. ????? ??????? ??? ????? ??????????, ??????????? ??????? toupper()
# (??? ???????? ???????? ?????????? ??????? tolower()).

result <- function(l){
  res1 <- strsplit(l[2], "?")[[1]][2]
  res2 <- toupper(gsub('?', '', res1))
  res2
}
cinema <- sapply(kino, result)
cinema

