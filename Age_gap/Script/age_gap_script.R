library(readr)
urlfile="https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-02-14/age_gaps.csv"
mydata <- read_csv(url(urlfile))
View(mydata)
