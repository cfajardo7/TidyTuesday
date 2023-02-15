######################
# Age Gap TidyTuesday Script#
# Created by: Cindy Fajardo
# Created on: 2023_02_15

##############
#Libraries

library(tidyverse)
library(readr)
library(here)
library(nationalparkcolors)
library(praise)
library(devtools)
library(beyonce)
library(ggthemes)
library(hrbrthemes)

#################
#Beggining of Script

urlfile="https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-02-14/age_gaps.csv" #names url file
mydata <- read_csv(url(urlfile)) #read in csv from hithub using url file
View(mydata)
