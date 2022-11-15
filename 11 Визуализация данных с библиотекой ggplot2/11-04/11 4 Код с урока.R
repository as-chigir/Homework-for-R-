  ###### SCATTERPLOTS AND BUBBLE CHARTS ######

###### loading data ######

mig <- read.csv("Migrants.csv")
View(mig)

##### scatterplots ######

ggplot(data = mig, aes(x = distance, y = migrants)) + 
  geom_point() + scale_y_log10()

ggplot(data = mig, aes(x = distance, y = migrants)) + 
  geom_point(color = "navy") + 
  scale_y_log10() + 
  theme_bw()

ggplot(data = mig, aes(x = distance, y = migrants)) + 
  geom_point(color = "navy") + scale_y_log10() + 
  theme_bw() +
  stat_ellipse(color = "red")

ggplot(data = mig, aes(x = distance, y = migrants, 
                       color = destination)) + 
  geom_point() + 
  scale_y_log10() + 
  theme_bw() 

ggplot(data = mig, aes(x = distance, y = migrants, 
                       color = popd71)) + 
  geom_point() + 
  scale_y_log10() + 
  theme_bw() 

ggplot(data = mig, aes(x = distance, y = migrants, 
                       color = popd71)) + 
  geom_point() + 
  scale_y_log10() + 
  theme_bw() + 
  scale_color_viridis_c()

##### bubble charts ######

ggplot(data = mig, aes(x = distance, y = migrants, 
                       color = destination, 
                       size = popd71)) + 
  geom_point() + 
  scale_y_log10() + 
  theme_bw()



