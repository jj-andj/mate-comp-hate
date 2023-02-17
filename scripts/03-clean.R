#### Preamble ####
# Purpose: Cleaning data on survey results prior to analysis. Data frame is reduced (unneeded columns, waves), columns are renamed for clarity and consistency.
# Author: Finn Korol, Jayden Jung, Sofia Sellitto 
# Data: survey.csv
# Contact: finn.korol@mail.utoronto.ca, jayden.jung@mail.utoronto.ca, sofia.sellitto@mail.utoronto.ca
# License: MIT
# Pre-requisites: run 02-download.R

library(readr)
library(dplyr)
library(janitor)
survey <- read_csv(here::here("inputs/data/survey.csv"), show_col_types = FALSE)

#limiting the data to just 4th wave surveys
survey_reduced_renamed <- datc[(datc$wave == 4 | datc$wave == 2), ] |>
  subset(select = -c(res_id, east, singdivsep, refugee_ind, list, women_role)) |>
  rename(only_means = hate_violence_means,
         message = hate_pol_message,
         prevent = hate_prevent_settlement,
         condemn = hate_polcondemn,
         justified = hate_justified,
         mate_compete = MateComp.cont,
         job_compete = JobComp.cont,
         life_satisfaction = LifeSatis.cont,
         excess_males = pop_15_44_muni_gendergap_2015,
         muslim_aff = muslim_ind,
         afd_aff = afd_ind,
         contact_aff = contact_ind
         )
  
#writing to csv
write_csv(survey_reduced_renamed, here::here("inputs/data/survey_clean.csv"))