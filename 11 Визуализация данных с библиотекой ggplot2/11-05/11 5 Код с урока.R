###### BAR CHARTS AND PIE CHARTS ######

###### loading data ######

diam <- read.csv("diamonds.csv")

###### bar charts ######

ggplot(data = diam, aes(x = cut)) + geom_bar()

diam <- diam %>% 
  mutate(cut = factor(cut, 
                      levels = c("Fair", "Good", "Very Good", "Premium", "Ideal"),
                                     ordered = TRUE))

ggplot(data = diam, aes(x = cut)) + geom_bar()

tab <- diam %>% group_by(cut) %>% tally
tab

ggplot(data = tab, aes(x = cut, y = n, fill = cut)) + 
  geom_bar(stat = "identity") +
  scale_fill_brewer(palette = "Set3") + 
  theme_classic()

ggplot(data = tab, aes(x = "", y = n, fill = cut)) + 
  geom_bar(stat = "identity", width = 1) + 
  scale_fill_brewer(palette = "Set3") + 
  theme_classic()

###### pie charts ######

ggplot(data = tab, aes(x = factor(1), y = n, fill = cut)) + 
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y")
