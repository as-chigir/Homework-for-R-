###### GGPLOT2 GRAPHS BY GROUPS ######

###### filtering regions ######

three <- regs %>% filter(OKR %in% c("Центральный федеральный округ",
                                    "Приволжский федеральный округ",
                                    "Сибирский федеральный округ"))
###### histograms by groups ######

ggplot(data = three, aes(x = X10, group = OKR, fill = OKR)) + geom_histogram()

ggplot(data = three, aes(x = X10, group = OKR, fill = OKR)) + 
  geom_histogram(alpha = 0.5, binwidth = 500)

###### density plots by groups ######

ggplot(data = three, aes(x = X10, group = OKR, fill = OKR)) + 
  geom_density(alpha = 0.5)

ggplot(data = three, aes(x = X10, group = OKR, fill = OKR)) + 
  geom_density(alpha = 0.5) + 
  scale_fill_manual(values = c("violet", "yellow", "lightblue"))

ggplot(data = three, aes(x = X10, group = OKR, fill = OKR)) + 
  geom_density(alpha = 0.5) + 
  scale_fill_manual(values = c("violet", "yellow", "lightblue"), name = "Округ",
                    labels = c("Центральный ФО", "Приволжский ФО", "Сибирский ФО"))

###### graphs with facets ######

ggplot(data = three, aes(x = X10, fill = OKR)) + 
  geom_histogram(binwidth = 500) + 
  facet_wrap(~OKR)

labels <- c("Центральный федеральный округ" = "Центральный", 
            "Приволжский федеральный округ" = "Приволжский", 
            "Сибирский федеральный округ" = "Сибирский")

ggplot(data = three, aes(x = X10, fill = OKR)) + 
  geom_histogram(binwidth = 500) + 
  facet_wrap(~OKR, labeller = as_labeller(labels))

###### line graphs by groups ######

okrs <- read_excel("data.xls", sheet = 2)

o_three <- okrs %>% filter(OKR %in% c("Центральный федеральный округ",
                                    "Приволжский федеральный округ",
                                    "Сибирский федеральный округ"))

ggplot(data = o_three, aes(x = mon, y = price, group = OKR)) + 
  geom_line()

ggplot(data = o_three, aes(x = mon, y = price, group = OKR, color = OKR)) + 
  geom_line(aes(linetype = OKR))









