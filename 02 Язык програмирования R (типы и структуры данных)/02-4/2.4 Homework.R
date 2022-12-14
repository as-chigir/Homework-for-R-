###  ?????? 1

# ???????? (????? ????????) ???????, ??????? ???????? ????? ?????????,
# ??????????? 3 ?????????? ?? 6 ???????:
  ## [,1] [,2] [,3] [,4] [,5] [,6]
  ## company.1 223 100 350 122 99 346
  ## company.2 563 478 501 497 102 421
  ## company.3 156 187 122 134 53 190

vec <- c(223, 100, 350, 122, 99, 346, 563, 478, 501, 497, 102, 421, 156, 187, 122, 134, 53, 190)
matr <- matrix(vec, ncol = 6, nrow=3, byrow=TRUE)
rownames(matr) <- paste("company", 1:3, sep=".")
matr


# 1.1. ???????? ????? ????? ?????????, ??????????? ?????? ????????? ?? ??? 6 ???????.

rowSums(matr)
matr

# 1.2. ???????? ????? ????? ?????????, ??????????? ?????????? ?? ?????? ?????.

colSums(matr)
matr

# 1.3. ????????? ?????? ?? ????????? ????????? ??????????. ???????? ?????????
# ???????? ??????? ????? ???????, ????? ??? ????????? ????????? ???:
  ## [,1] [,2] [,3] [,4] [,5] [,6]
  ## company.1 223 110 350 122 99 346
  ## company.2 563 478 517 497 102 421
  ## company.3 156 187 127 134 53 190

matr[1, 2] <- 110
matr[2, 3] <- 517
matr[3, 3] <- 127
matr  

### ?????? 2 ###

#  ???????????, ??? ??? ??? ?????? ?????????? ???????? ????????? ???????:

# No   City            District
# N1   ??????          ?????????
# N2   ??????          ??????????????
# N3   ??????          ?????????
# N4   ??????          ??????????????
# N5   ?????-????????? ??????????????
# N6   ?????-????????? ???????????
# N7   ?????-????????? ??????????????
# N8   ?????-????????? ???????????

# ???????? ??? ???????, ??????? ????? ?? ????????? ????????? ? ????? ???????.
# ?????????? ?? ? ?????????. ????????? ??????? ?????????, ?????? ??????????
# ?????????? ???????? ????? ???????, ??????: ?? ???????? ?? ?????? ????????????
# ? ??????? ??????? ??????? ??????, ?? ? ????????? ???????? ??????? ?????????????.

# ?????????. ??? ??????? District ????? ?????????? ???????????? (??????????)
# ????????. ????????? ? ????? ?????? ??????? ???????? ??????? ????? ?
# ??????? ??? ????????? ??????? c():

No <- paste("N", 1:8, sep="")
No

City <- c(rep("??????", 4), rep("????-?????????", 4))
# City <- (rep(c("??????", "????-?????????"), each=4)
City

District <- c(rep(c("?????????", "??????????????"), 2), rep(c("??????????????", "???????????"), 2))
District  
  
new_table <- cbind.data.frame(No, City, District)
new_table  
  
  
  
  
  
  





