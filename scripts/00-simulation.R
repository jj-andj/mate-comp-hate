#### Preamble ####
# Purpose: Simulation of our prepared dataframe
# Author: Finn Korol, Jayden Jung, Sofia Sellitto
# Data: [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

library(here)
library(readr)

set.seed(3)

#participant values used in analysis in relation to survey scores
age <- sample(x = 1:90, size = 100, replace = TRUE)
# data used for our figures will only be from waves 2 and 4 of surveying
wave <- sample(c(2,4), size = 100, replace = TRUE)
age_group <- sample(c('18-29','30-39','40-49','50-59','60 and older'), size = 100, replace = TRUE)
gender <- sample(c('Male','Female'), size = 100, replace = TRUE)
state <- sample(c('State A','State B', 'State C', 'State D'), size = 100, replace = TRUE)
citizenship <- sample(x = 0:1, size = 100, replace = TRUE)
marital <- sample(c('widowed', 'married', 'commonlaw', 'single', 'divorced/separated'), size = 100, replace = TRUE)
religion <- sample(c('catholic christian', 'protestant christian', 'jewish', 'muslim', 'nondenominational', 'atheist', 'agnostic', 'Eastern Religion'), size = 100, replace = TRUE)
occupation <- sample(c('student', 'unemployed', 'retired', 'civil servant', 'self-employed', 'sick/on leave', 'employee'), size = 100, replace = TRUE)
income <- sample(c('under 500', '500-1500', '1500-2500', '2500-3500', '3500-4500', '4500-5500', 'over 5500'), size = 100, replace = TRUE)
household_size <- sample(x = 0:10, size = 100, replace = TRUE)

#important survey scores
only_means <- sample(x = 1:4, size = 100, replace = TRUE)
condemn <- sample(x = 1:4, size = 100, replace = TRUE)
justified <- sample(x = 1:4, size = 100, replace = TRUE)
message <- sample(x = 1:4, size = 100, replace = TRUE)
prevent <- sample(x = 1:4, size = 100, replace = TRUE)

mate_compete <-  sample(x = 1:4, size = 100, replace = TRUE)
job_compete <- sample(x = 1:4, size = 100, replace = TRUE)
ref_integrating <- sample(x = 1:4, size = 100, replace = TRUE)
ref_citizenship <- sample(x = 1:4, size = 100, replace = TRUE)
ref_reduce <- sample(x = 1:4, size = 100, replace = TRUE)
ref_moredone <- sample(x = 1:4, size = 100, replace = TRUE)
ref_cultgiveup <- sample(x = 1:4, size = 100, replace = TRUE)
ref_economy <- sample(x = 1:4, size = 100, replace = TRUE)
ref_crime <- sample(x = 1:4, size = 100, replace = TRUE)
ref_terror <- sample(x = 1:4, size = 100, replace = TRUE)
ref_loc_services <- sample(x = 1:4, size = 100, replace = TRUE)
ref_loc_economy <- sample(x = 1:4, size = 100, replace = TRUE)
ref_loc_crime <- sample(x = 1:4, size = 100, replace = TRUE)
ref_loc_culture <- sample(x = 1:4, size = 100, replace = TRUE)
ref_loc_islam <- sample(x = 1:4, size = 100, replace = TRUE)
ref_loc_schools <- sample(x = 1:4, size = 100, replace = TRUE)
ref_loc_housing <- sample(x = 1:4, size = 100, replace = TRUE)
ref_loc_wayoflife <- sample(x = 1:4, size = 100, replace = TRUE)

eduyrs <- sample(x = 0:20, size = 100, replace = TRUE)

life_satisfaction <- sample(x = 0:10, size = 100, replace = TRUE)
self_econ <- sample(x = 0:10, size = 100, replace = TRUE)

distance_ref <- sample(c('under 5 kilometres', '5-10 kilometres', '10-15 kilometres', '15-20 kilometres', '20-25 kilometres', '25-30 kilometres', 'over 30 kilometres'), size = 100, replace = TRUE)
settle_ref <- sample(c('none', '1-100', '100-200', '200-300', '300-400', 'over 400'), size = 100, replace = TRUE)

left_right <- sample(x = 0:10, size = 100, replace = TRUE)
afd_closeness <- sample(x = 0:100, size = 100, replace = TRUE)
muslim_att <- runif(100, 0, 1)
adf_att <- runif(100, 0, 1)
contact_att <- runif(100, 0, 1)

excess_males <- runif(100, 0.5, 2)

treatment_list <- sample(c('scenario 1', 'scenario 2'), size = 100, replace = TRUE)
outcome_list <- sample(x = 0:4, size = 100, replace = TRUE)

survey_sim <- data.frame(
  age,
  wave,
  age_group,
  gender,
  state,
  citizenship,
  marital,
  religion,
  occupation,
  income,
  household_size,
  only_means,
  condemn,
  justified,
  message,
  prevent,
  mate_compete,
  job_compete,
  ref_integrating,
  ref_citizenship,
  ref_reduce,
  ref_moredone,
  ref_cultgiveup,
  ref_economy,
  ref_crime,
  ref_terror,
  ref_loc_services,
  ref_loc_economy,
  ref_loc_crime,
  ref_loc_culture,
  ref_loc_islam,
  ref_loc_schools,
  ref_loc_housing,
  ref_loc_wayoflife,
  eduyrs,
  life_satisfaction,
  self_econ,
  distance_ref,
  settle_ref,
  left_right,
  afd_closeness,
  muslim_att,
  adf_att,
  contact_att,
  excess_males,
  treatment_list,
  outcome_list
  )

write_csv(survey_sim, here::here("inputs/data/survey_sim.csv"))
