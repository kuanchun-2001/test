---
  title: "test"
---
  
install.packages('usethis')
library('usethis')
library(gitcreds)
gitcreds_set()
use_github()
  
knitr::purl('environment.Rmd', documentation = 0)
xfun::embed_file('environment.Rmd')
xfun::embed_file('environment.R')
xfun::embed_file('C:/Users/user/Downloads/reef_fish.xlsx')
xaringanExtra::use_clipboard()

library(readxl) # load the package `readxl'
read_excel('C:/Users/user/Downloads/reef_fish.xlsx') # automatically print on my screen
fish<-read_excel('C:/Users/user/Downloads/reef_fish.xlsx')
fish
fish<-read.table('C:/Users/user/Downloads/reef_fish.txt', header=T, sep='\t', dec='.') 
fish<-read.table ("C:/Users/user/Downloads/reef_fish.txt",header = TRUE,sep="\t", dec=".")# long version
fish<-read.table("C:/Users/user/Downloads/reef_fish.txt", TRUE, "\t",".")# short version
fish<-read.table('C:/Users/user/Downloads/reef_fish.txt', header=T, sep='\t', dec='.')
barplot(fish$richness, main="Top 10 reef fish Richness (Allen, 2000)", horiz=TRUE, names.arg=fish$country, cex.names=0.5, las=1)

