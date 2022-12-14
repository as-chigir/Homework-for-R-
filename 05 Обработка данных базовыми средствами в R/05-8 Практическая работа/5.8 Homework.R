### ???????? ?????? ###

# ? ???? ??????? ??? ???????????? ?????????? ? ?????? flats.csv,
# ??????? ???????? ?????? ?? ????? ?? ???????? ? ??????.
# ?????????? ? ?????:
# ?	price: ???? ????????, ? ??????? ????????;
# ?	totsp: ????? ??????? ????????, ? ?????????? ??????;
# ?	livesp: ????? ??????? ????????, ? ?????????? ??????;
# ?	kitsp: ??????? ?????, ? ?????????? ??????;
# ?	dist: ?????????? ?? ??????, ? ??????????;
# ?	metrdist: ?????????? ?? ?????, ? ???????;
# ?	walk: ??????? ??????????? ?? ????? (1 ? ?????? ?? ?????, 0 ? ?? ??????????);
# ?	brick: ???????? ???? (1 ? ?????????, ??????? ?/?, 0 ? ??????);
# ?	floor: ???? (1 ? ???? ????? ??????? ? ??????????, 0 ? ?????).
# ???????????? ???????? ????? ????? ????????? ?? ???????? ?????????? ?? ????????? Kaggle.



### ?????? 1 ###

# ????????? ?????? ?? ????? flats.csv ? ????????? ?? ? ????????? flats.
# ?????????? ?? ??????????? ? ?????????? ??? ? ????????? ???? RStudio.

setwd("C:/Users/alexandra_c/Desktop/????? R/???????????? ???????/05-8 ???????????? ??????")
flats <- read.csv("flats.csv")



### ?????? 2 ###

# ???????? ?? ????? ?????? ? ????????? ?????? ? ???????????.
# ???????? ?????????? ? ????? ???????? ? ??????? (??????????? ????????????)
# ?????????, ????? ??? ??????? ? ????????? ??????? ????????? ??? ????????, ? ?? ?????????.

head(flats, 5)
tail(flats, 5)
str(flats)
# Check is ok. ???????????? ??????, ?????? ? ????????? ?????? ?? ?????, ??? ??????? kitsp
# ????? ??? ?????? numeric, ?? ? ???????? ????????? ?? ??????? ??? ??? ?????? ???????? integer ?



### ?????? 3 ###

# ???????? ?? ????? ??????? ?????????????? ???? ???????? ? ???????????? ? ???????????? ??????????
# ???????? ?? ???????: ??????????? ?? ????????? ??????? ? ????????? ? ??????? ????????? ???????????
# (???? ?? ????????? ??????? ?????????? ???????????? ??? ????????)?
# ????????? ????? ??????? ?????????? ??? ?? ????????, ???? ?? ??????? ??????????? ? ???????????? ????????
# ???? ?? ? ?????-?????? ?????????? ? ???????????????? ????? ?????? ?????????? ???????? (????????????? ???? ? ??????)?
  
summary(flats)
# - ????????? ??????? ? ????????? ? ??????? ??????????? ?? ???????????.
# - ??? ? ???? ???????? ??? ?? ???????? ?????? ??????????. ???? ???????? ??? ? 14,6 ??? ?????? ???.
# - ?????????? ???????? ? ???????????? ?????????? ?? ???????????.



### ?????? 4 ###

# ????????? ??????? ???????? R, ???????? ? ????????? flats ??????? priceru,
# ?????????? ???????? ??? ?? ???????? ? ??????? ??????. ????????, ??? ???? ?????? ????? ???????? 78 ??????.

flats$priceru <- flats$price * 78



### ?????? 5 ###

# ????????? ???????????? ???????? ???? ?? ???????? ? ??????? ?????? ? ?????????? pricemax.
# ????????? ?????????? ?????, ????????, ?????? ???????????????? ???????? ????? ???????
# (???????? ????????? ??????) ???????? ? ??????.

pricemax <- max(flats$priceru)
flats[flats$priceru == pricemax,]



### ?????? 6 ### 

# ????????? ??????????? ???????? ???? ?? ???????? ? ??????? ?????? ? ?????????? pricemin.
# ????????? ?????????? ?????, ????????, ?????? ???????????????? ????????
# ????? ??????? (???????? ????????? ??????) ???????? ? ??????.

pricemin <- min(flats$priceru)
flats[flats$priceru == pricemin,]



### ?????? 7 ### 

# ???????? ?? ?????????? flats ??????, ??????????????? ?????????, ??????? ????????? ?
# ??????? ??????????? ?? ????? ? ? ????? ???????? ???? ???????. ????????? ?? ? ????????? flats1.

flats1 <- flats[flats$walk == 1 & flats$livesp > mean(flats$livesp),]



### ?????? 8 ### 

# ???????? ?? ?????????? flats ??????, ??????????????? ?????????, ??????? ????? ???? ????? 5 ??? ??????,
# ???? ????? 35 ??? ??????. ????????? ?? ? ????????? flats2.

flats2 <- flats[flats$priceru < 5*(10^6) | flats$priceru > 35*(10^6),]



### ?????? 9 ### 

# ???????? ? ????????? flats ??????? ratio, ??????? ???????? ?????????
# ????? ??????? ???????? ? ?? ????? ???????.

flats$ratio <- flats$livesp / flats$totsp



### ?????? 10 ### 

# ???????? ?? ?????????? flats ??????, ??????????????? ????????? ?? ????????? ratio ????? 0,8.
# ??????????? ?? ???????? ? ??????? ????? ????? ??????? ????? ???????? ????????? ??? ? ????? ?? ??????.

flats3 <- flats[flats$ratio > 0.8,]

# ??????? ???? ?? ???????? ? ??????? ????? ????? ??????? ?? ????????? ??????? ???? ?? ???????? ?? ??????.
# ??????? ?????? ???????, ??? ??? ????? ???????.

if (mean(flats3$priceru) > mean(flats$priceru)){
  print (TRUE)
} else {
  print(FALSE)
}

# ??? ????? ???????? ???? ?? ???????? ? ??????? ????? ????? ??????? ? ???????????? ????? ?? ???????? ? ??????

for (i in flats3$priceru){
  if (i == pricemax){
    print("???? ?? ???????? ? ??????? ????? ????? ??????? ????? ???????.")
  } else {
    print("???????? ? ??????? ????? ????? ??????? ?? ????? ???????")
  }
}



### ?????? 11 ### 
# ???????? ?? ?????????? ??????? totsp, livesp, kitsp ? ????????? ?? ? ????????? space.
# ???????????? ???????, ???????? ?? ???????? total, live ? kitchen.

space <- cbind.data.frame(flats$totsp,
                          flats$livesp,
                          flats$kitsp)
colnames(space) <- c("total", "live", "kitchen")


