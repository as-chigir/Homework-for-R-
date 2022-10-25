######## USING VIM FOR VISUALISING NA ########

install.packages("VIM")

remotes::install_github("statistikat/VIM")

library(VIM)

aggr(chile)

matrixplot(chile)
