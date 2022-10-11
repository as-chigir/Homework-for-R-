
cpi %>% mutate(cpi_perc = cpi_score / 100)

cpi %>% head

cpi <- cpi %>% mutate(cpi_perc = cpi_score / 100)

cpi <- cpi %>% mutate(cpi_perc = cpi_score / 100, eu = ifelse(region == "WE/EU", 1, 0))

cpi %>% colnames

cpi <- cpi %>% add_column(asia = ifelse(cpi$region %in% c("AP", "ECA"), 1, 0),
                   .before = "eu")

cpi <- cpi %>% add_row(country = "Luxembourg", iso3 = "LUX", region = "WE/EU", 
                cpi_score = 80, cpi_rank = 9, n_sources = NA, eu = 1, asia = 0, .after = 3)


cpi <- cpi %>% arrange(country)

cpi %>% arrange(desc(cpi_rank)) %>% View

cpi %>% arrange(cpi_score, desc(country)) %>% View

cpi %>% top_n(10, cpi_score) %>% View


