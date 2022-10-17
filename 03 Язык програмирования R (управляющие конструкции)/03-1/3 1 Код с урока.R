# conditions

users.before <- 125
users.after <- 138

users.after > users.before 
users.after - users.before >= 10
users.after - users.before == 0
users.after - users.before != 0

# joining conditions

users.after > users.before & users.after < 150
users.before > users.after | users.before >= 100

xor(users.before > users.after, users.before >= 100)

# conditions on vectors

temps <- c(17, 20, 21, 24, 18, 16, 14)

mt <- mean(temps)
temps > mt
sum(temps > mt)

length(temps[temps > mt])

st1 <- c(4, 5, 5, 4)
st2 <- c(4, 3, 4, 5)

st1 == st2


