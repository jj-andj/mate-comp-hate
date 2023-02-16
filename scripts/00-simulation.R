set.seed(3)

#participant values used in analysis in relation to survey scores
age <- sample(x = 1:90, size = 100, replace = TRUE)
male <- sample(x = 0:1, size = 100, replace = TRUE)


#important survey scores
only_means <- sample(x = 1:5, size = 100, replace = TRUE)
condemn <- sample(x = 1:5, size = 100, replace = TRUE)
justified <- sample(x = 1:5, size = 100, replace = TRUE)
message <- sample(x = 1:5, size = 100, replace = TRUE)
prevent <- sample(x = 1:5, size = 100, replace = TRUE)

df_s <- data.frame(
  wave = wave,
  age = age,
  only_means = only_means,
  condemn = condemn,
  justified = justified,
  message = message,
  prevent = prevent
  )