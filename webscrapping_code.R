install.packages('rvest')
install.packages('stringr')
install.packages('tidyr')

library(rvest)
library(stringr)
library(tidyr)


url <- '/Users/vikrants/Desktop/Global Biobank Engine.html'
webpage <- read_html(url)

sb_table <- html_nodes(webpage, 'table')
sb <- html_table(sb_table)[[1]]
head(sb)


write.csv(sb, 'hypertension.csv', row.names=F)
