#### Preamble ####
# Purpose: Testing simulated survey data
# Author: Finn Korol, Jayden Jung, Sofia Sellitto
# Data: survey_sim.csv
# Contact: finn.korol@mail.utoronto.ca, jayden.jung@mail.utoronto.ca, sofia.sellitto@mail.utoronto.ca
# License: MIT
# Pre-requisites: Have run 00-simulation.R and have survey_sim.csv saved

# read in simulation file
survey_sim <- read_csv(here::here("inputs/data/survey_sim.csv"), 
                       show_col_types = FALSE)

#checking bound minimum
min(survey_sim$age, na.rm=TRUE) > 0

#checking bound maximum
max(survey_sim$age, na.rm=TRUE) < 110

#checking that number of unique row values is appropriate
length(unique(survey_sim$wave)) < 4

#checking for allowed col types
any((survey_sim$only_means | survey_sim$condemn | survey_sim$justified | survey_sim$message | survey_sim$prevent)%%1==0)
