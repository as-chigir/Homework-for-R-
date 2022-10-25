####### TRANSFORMING FACTORS #######

chile <- read.csv("Chile.csv", stringsAsFactors = TRUE)
table(chile$vote)
str(chile$vote)

chile <- chile %>% mutate(vote = fct_relevel(vote, "Y", "N", "U", "A"))
str(chile$vote)

chile <- chile %>% mutate(vote = fct_relevel(vote, "N", "Y"))
str(chile$vote)

chile <- chile %>% mutate(vote = fct_relevel(vote, "N", after = 3))
str(chile$vote)

chile <- chile %>% mutate(vote = fct_infreq(vote))
str(chile$vote)

chile <- chile %>% mutate(vote = fct_inorder(vote))
str(chile$vote)

chile2 <- chile
chile2 <- chile2 %>% mutate(vote = fct_lump_n(vote, 2))
str(chile2$vote)

chile3 <- chile
chile3 <- chile3 %>% mutate(vote = fct_lump_n(vote, 2, 
                                              other_level = "Другое"))
str(chile3$vote)

chile4 <- chile
chile4 <- chile4 %>% mutate(vote = fct_lump_min(vote, 200))
str(chile4$vote)

chile <- chile %>% mutate(education = fct_collapse(education, 
                                                   "High" = c("S", "PS")))
head(chile)
