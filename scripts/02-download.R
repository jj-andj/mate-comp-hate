#loading packages
library(readstata13)
library(readr)

#reading in the stata file
dat <- read.dta13(here::here("inputs/data/survey.dta"))

#limiting the data to just 4th wave surveys
dat_use <- dat[dat$wave == 4, ]

#writing to csv
write_csv(dat_use, here::here("outputs/data/survey_W4.csv"))