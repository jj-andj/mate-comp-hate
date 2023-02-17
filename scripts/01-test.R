#### Preamble ####
# Purpose: Example unit tests run on simulated data
# Author: Finn Korol, Jayden Jung, Sofia Sellitto
# Data: [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

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
