#### Preamble ####
# Purpose: Downloads and saves survey data to new file
# Author: Finn Korol, Jayden Jung, Sofia Sellitto 
# Data: survey.dta
# Contact: finn.korol@mail.utoronto.ca, jayden.jung@mail.utoronto.ca, sofia.sellitto@mail.utoronto.ca
# License: MIT
# Pre-requisites: Have downloaded survey.dta from https://doi.org/10.7910/DVN/QXJDJ5

#loading packages
library(readstata13)
library(readr)

#reading in the stata file
survey <- read.dta13(here::here("inputs/data/survey.dta"))

#writing to csv
write_csv(survey, here::here("inputs/data/survey.csv"))