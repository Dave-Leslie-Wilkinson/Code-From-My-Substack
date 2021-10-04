library(readr)
library(ggplot2)
library(dplyr)

cases_worldwide <- read_csv("cases_worldwide.csv")
head(cases_worldwide)
tail(cases_worldwide)

ggplot(cases_worldwide, aes(date, cum_cases)) + geom_line() +geom_smooth(method = "lm", se = FALSE)

cases_by_country <- read_csv("cases+by_country")
head(cases_by_country)
tail(cases_by_country)

top_countries <- cases_by_country %>%
  group_by(country) %>%
  summarize(cases = max(cum_cases)) %>%
  top_n (10, cases)
top_countries

ggplot (top_countries, aes(country, cases)) +
  geom_bar(stat = "identity") +
  labs(title = "Cases by Country", x = "Country", y = "Cases")
