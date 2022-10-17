# ================ Joining dataframes ================

d1 <- data.frame(name = c("Ann", "Bob", "Charles", "Dennis", "Eva"),
                 mark = c(4, 3, 5, 3, 5))

d2 <- data.frame(name = c("Ann", "Bob", "Charles", "Fred", "George"),
                 faculty = c("A", "B", "C", "D", "D"))

d1
d2

left_join(d1, d2, by = "name")

right_join(d1, d2, by = "name")

inner_join(d1, d2, by = "name")

full_join(d1, d2, by = "name")

