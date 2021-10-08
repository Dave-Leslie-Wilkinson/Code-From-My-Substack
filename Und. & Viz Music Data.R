library(readr)
library(ggplot2)
library(dplyr)
data <- read_csv("bb_chords.csv")
head(data)
nrow(data)

#Work with Chords
data_count <- data %>% count(chord, sort = TRUE) %>% slice(1:20)
data_count

ggplot(data_count, aes(chord, n, fill="chord")) +
  geom_col() +
  labs (title = "Most Common Chords", x = "Chords", y = "Number")

#Work with Artists
common_artists <- data %>%
  select(artist) %>%
  count(artist, sort=TRUE) %>%
  slice(1:10)
common_artists

ggplot(common_artists, aes(artist, n, fill="artist")) +
  geom_col()

#Work with bigrams
bigram_data <- data %>%
  mutate(next_chord = lead(chord),
         next_title = lead(title),
         bigram = paste(chord, next_chord)) %>%
        count(bigram, sort = TRUE) %>%
        slice(1:10)
bigram_data

ggplot(bigram_data, aes(bigram, n, fill="bigram")) +
  geom_col()
