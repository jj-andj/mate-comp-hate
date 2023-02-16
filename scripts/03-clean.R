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
datc <- read_csv(here::here("outputs/data/survey.csv"), show_col_types = FALSE)

#limiting the data to just 4th wave surveys

dat_use <- datc[datc$wave == 4, ] |> 
  select(res_id,gender, age, MateComp.cont, pop_15_44_muni_gendergap_2015, jobComp.cont, LifeSatis.cont, hate_violence_means, hate_pol_message, hate_prevent_settlement, hate_polcondemn)

#writing to csv
write_csv(dat_use, here::here("outputs/data/survey_W4.csv"))