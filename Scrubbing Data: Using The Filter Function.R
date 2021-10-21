library(dplyr)
data <- read.csv("2021Facebook Content.csv")
head(data)
data %>%
  filter(Reach > 100)

data %>%
  filter(Code == "SA")

data %>%
  filter(Code == "SA" & Comments > 1)

data %>%
  filter(Likes.and.reactions > mean(Likes.and.reactions))

#Share Not 0
data %>% 
  filter(Shares != 0)

#Share Not NA
data %>% 
  filter(Shares != NA)

Code Not NA
data %>% 
  filter(!is.na(Code))

#Code Is NA
data %>% 
  filter(is.na(Code))
