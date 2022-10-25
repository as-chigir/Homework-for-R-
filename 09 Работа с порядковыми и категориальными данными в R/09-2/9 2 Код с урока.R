############# CREATING A FACTOR #############

f <- factor(c("yes", "no", "undecided", "yes", "no"))
f
levels(f)
str(f)

############# SETTING LEVELS #############

f2 <- factor(c(0, 1, 0, 1, 10, 2))
str(f2)

f <- factor(c("yes", "no", "undecided", "yes", "no"), 
            levels = c("yes", "no", "undecided"))
str(f)

levels(f) <- c("no", "yes", "undecided")
str(f)

f <- factor(f, labels = c("нет", "да", "не определился"))
f

############# ORDERED FACTORS #############

f[1] < f[2]
min(f)


values <- c("абсолютно не согласен", "не согласен", "согласен", "абсолютно согласен")
f_ord <- factor(values, levels = values, ordered = TRUE)
str(f_ord)
f_ord[1] < f_ord[3]
min(f_ord)
