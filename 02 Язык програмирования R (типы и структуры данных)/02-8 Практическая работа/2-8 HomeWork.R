ID <- 100:108
GENDER <- c(1, 2, 2, 1, 2, 1, 1, 1)
YEAR <- c("1983", " 1988", "1975 ", "1980", "1977  ", "1992", "1994", "1983 ")
ID
class(ID)
class(GENDER)
class(YEAR)


GENDER <- as.factor(GENDER)
YEAR <- as.integer(YEAR)
class(ID)
class(GENDER)
class(YEAR)


goods_export <- cbind.data.frame(
  rep(c('Канада', 'Нидерланды', 'США'), 2),
  c('Нидерланды', rep(c('США', 'Канада'), 2), 'Нидерланды'),
  c(3905228446, 336531873909, 4862948109, 29807484356, 292338433401, 51225636600)
)
colnames(goods_export) <- c('Парнер 1', 'Парнер 2', 'Экспорт (доллары США)')
goods_export


goods_import <- cbind.data.frame(
  rep(c('Канада', 'Нидерланды', 'США'), 2),
  c('Нидерланды', rep(c('США', 'Канада'), 2), 'Нидерланды'),
  c(3515239399, 229687088046, 2249551077, 42262861193, 326628559104, 30883263358)
)
colnames(goods_import) <- c('Парнер 1', 'Парнер 2', 'Импорт (доллары США)')
goods_import


export_mat <- rbind(c(0, 336531873909, 3905228446),
                    c(292338433401, 0, 51225636600),
                    c(4862948109, 29807484356, 0))
colnames(export_mat) <- c('Канада', 'Нидерланды', 'США')
export_mat


import_mat <- rbind(c(0, 229687088046, 3515239399),
                    c(326628559104, 0, 30883263358),
                    c(2249551077, 42262861193, 0))
colnames(import_mat) <- c('Канада', 'Нидерланды', 'США')
import_mat


diff_mat <- export_mat - import_mat
diff_mat

source <- "COMTRADE, https://comtrade.un.org/"


date()
