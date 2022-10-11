# ============ Selecting columns ============

cpi %>% select(country) %>% head
cpi %>% select(country, cpi_score) %>% head
small1 <- cpi %>% select(country, cpi_score)
View(small1)

small2 <- cpi %>% select(iso3:cpi_score)
View(small2)

small3 <- cpi %>% select(-iso3)
View(small3)

small4 <- cpi %>% select(-c(iso3, region))
View(small4)

cpi %>% select(1, 3) %>% head

# ============= Filtering rows =============

cpi %>% filter(cpi_score > 80)

cpi %>% filter(cpi_score > 80 & region == "WE/EU")

cpi %>% filter(cpi_score > 80, region == "WE/EU")

cpi %>% filter(region == "WE/EU" | region == "ECA")

cpi %>% filter(region %in% c("WE/EU", "ECA"))

# ============= Text functions =============

cpi %>% select(starts_with("cpi"))

?starts_with

cpi %>% select(ends_with("score")) %>% head

cpi %>% select(contains("n_")) %>% head

cpi %>% filter(str_detect(country, "Guinea"))





