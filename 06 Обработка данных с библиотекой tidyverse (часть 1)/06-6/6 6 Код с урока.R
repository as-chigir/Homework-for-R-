# ========== Grouping and aggregating data ==========

cpi %>% group_by(region) %>% tally

cpi %>% group_by(region) %>% summarise(N = n())

cpi %>% group_by(region) %>% summarise(N = n(), 
                                       `Mean CPI` = mean(cpi_score),
                                       `Sd CPI` = sd(cpi_score))
cpi %>% group_by(region) %>% summarise(N = n(), 
                                       `Mean CPI` = mean(cpi_score),
                                       `Sd CPI` = sd(cpi_score),
                                       `Mean N sources` = mean(n_sources, 
                                                               na.rm = TRUE))
cpi %>% group_by(region) %>% summarise(N = n(), 
                                       `Mean CPI` = mean(cpi_score),
                                       `Sd CPI` = sd(cpi_score),
                                       `Mean N sources` = mean(n_sources, 
                                                               na.rm = TRUE)) %>% 
  mutate(CV = `Sd CPI` / `Mean CPI`)


group_walk()
write_csv()

cpi %>% group_by(region) %>% 
  group_walk(~write_csv(.x, paste0(str_replace(.y$region, "/", "_"), ".csv")))
