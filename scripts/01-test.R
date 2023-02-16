#checking bounds
min(df_s$age) < 0
max(df_s$age) > 110

#checking that number of unique row values is appropriate
length(unique(df_s$wave)) > 4

#checking for allowed col types
!is.numeric(df_s$only_means)
any((df_s$only_means | df_s$condemn | df_s$justified | df_s$message | df_s$prevent)%%1!=0)
