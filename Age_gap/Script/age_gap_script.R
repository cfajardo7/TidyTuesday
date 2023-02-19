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
library(ggridges)
library(nationalparkcolors)

#Storytime#
#When looking at the data, I wanted to see if the lead actors were older and if there were more males than females. I don't know if this is right.

#################
#Data Wrangling
urlfile="https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-02-14/age_gaps.csv" #names url file
mydata <- read_csv(url(urlfile)) #read in csv from github using url file
View(mydata)


mydata_select <-mydata %>%
  select(movie_name,character_1_gender,character_2_gender,actor_1_age,actor_2_age) #selected the rows I want to use
View(mydata_select) #view new data frame

gender_difference_pivot <- mydata_select %>% #dataframe to use from the selected data frame that came from my original data "mydata"
  pivot_longer(cols = character_1_gender:character_2_gender, #pivot to make man and woman columns into one named gender
               names_to = "Character_Type", #new column wih character type
               values_to = "Character_Gender") #new column with gender
View(gender_difference_pivot)

gender_difference_dbl_pivot <- gender_difference_pivot %>% #dataframe to use from the selected data frame that came from my original data "mydata"
  pivot_longer(cols = actor_1_age:actor_2_age, #pivot from numerical columns to create age column
               names_to = "Actor_Type", #actor age 1 or 2
               values_to = "Character_Age") #actor age
View(gender_difference_dbl_pivot)
praise()



ggplot(gender_difference_dbl_pivot, #double pivot dataframe
       aes(y = Character_Type, #either character 1 or 2 meaning primary or secondary role
           x = Character_Age))+ #characters ages
  geom_density_ridges(aes(fill = Character_Gender), #density plot with gender as the fill
                      alpha = 0.6, #transparency
                      show.legend = TRUE)+ #legend
  scale_fill_manual(values= park_palette("Arches"))+ #colorsssssss
                                         theme_classic()+ #clean and classy
  labs(title = "Gender Difference in Actor Roles", #title to plot
    x = "Actor Age", #x axis title
       y = "Actor Gender", #y axis title
       fill = "Actor Sex")+ #leged titile
  theme(axis.title = element_text(size = 10), #bigger x and y axis titles
        plot.title = element_text(hjust=-0.8)) #adjust the plot title to the left

