# ================ Using stargazer ================

install.packages("stargazer")
library(stargazer)

stargazer(cpi, type = "html", out = "summary.htm")

?stargazer

stargazer(cpi, type = "html", out = "summary.htm", 
          title = "CPI Score 2019", 
          notes = "Transparency International",
          omit.summary.stat = c("p25", "p75"),
          median = TRUE)

descr <- cpi %>% group_by(region) %>% summarise(N = n(), 
                                       `Mean CPI` = round(mean(cpi_score), 2),
                                       `Sd CPI` = round(sd(cpi_score), 2))

stargazer(descr, summary = FALSE, type = "html", out = "groups.htm")





