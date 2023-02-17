#### Preamble ####
# Purpose: cleaning and preparing data for use
# Author: Finn Korol, Jayden Jung, Sofia Sellitto 
# Data: [...UPDATE THIS...]
# Contact: [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

library(readr)
library(dplyr)
library(janitor)
datc <- read_csv(here::here("inputs/data/survey.csv"), show_col_types = FALSE)

#limiting the data to just 4th wave surveys
dat_use <- datc[(datc$wave == 4 | datc$wave == 2), ] |>
  subset(select = -c(res_id, east, singdivsep, refugee_ind, list, women_role))
  rename(only_means = )

#writing to csv
write_csv(dat_use, here::here("inputs/data/survey_clean.csv"))