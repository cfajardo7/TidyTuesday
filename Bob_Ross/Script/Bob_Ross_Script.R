######################
# Bob Ross TidyTuesday Script#
# Created by: Cindy Fajardo
# Created on: 2023_02_21

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
library(ggridges)
library(nationalparkcolors)
library(tidytuesdayR)

#Load Data
bob_ross <- read_csv(
  "https://raw.githubusercontent.com/jwilber/Bob_Ross_Paintings/master/data/bob_ross_paintings.csv",)

bob_ross <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-02-21/bob_ross.csv')
