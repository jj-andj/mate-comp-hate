#### Preamble ####
# Purpose: Example unit tests run on simulated data
# Author: Finn Korol, Jayden Jung, Sofia Sellitto
# Data: [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#checking bound minimum
min(df_s$age, na.rm=TRUE) > 0

#checking bound maximum
max(df_s$age, na.rm=TRUE) < 110

#checking that number of unique row values is appropriate
length(unique(df_s$wave)) < 4

#checking for allowed col types
any((df_s$only_means | df_s$condemn | df_s$justified | df_s$message | df_s$prevent)%%1==0)
