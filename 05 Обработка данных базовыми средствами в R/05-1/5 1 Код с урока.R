# ========== Examples of data frames ==========

dat <- cbind.data.frame(a = c(4, 6, 7),
                        b = c(0, 1, 0))
View(dat)

data()

# ============= Simple data frame =============
mtcars
class(mtcars)

# ================ Time series ================
AirPassengers
class(AirPassengers)
diff(AirPassengers, differences = 1)
plot(AirPassengers)

# =================== Table ===================
HairEyeColor
class(HairEyeColor)
dim(HairEyeColor)

margin.table(HairEyeColor, 1)
margin.table(HairEyeColor, 2)
margin.table(HairEyeColor, 3)

prop.table(HairEyeColor)
prop.table(HairEyeColor) * 100
