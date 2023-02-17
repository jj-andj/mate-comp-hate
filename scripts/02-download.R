#### Preamble ####
# Purpose: Downloads and saves the data from spotify
# Author: Finn Korol, Jayden Jung, Sofia Sellitto 
# Data: [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#loading packages
library(readstata13)
library(readr)

#reading in the stata file
dat <- read.dta13(here::here("inputs/data/survey.dta"))

#writing to csv
write_csv(dat, here::here("inputs/data/survey.csv"))