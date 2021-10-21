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
  filter(Code == "SA" & Comments > 1)

data %>%
  filter(Likes.and.reactions > mean(Likes.and.reactions))

data %>% 
  filter(Shares != 0)

data %>% 
  filter(Shares != NA)

data %>% 
  filter(!is.na(Code))

data %>% 
  filter(is.na(Code))
