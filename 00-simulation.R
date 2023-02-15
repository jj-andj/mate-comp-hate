set.seed(3)

#participant values used in analysis in relation to survey scores
wave = sample(x = 1:4, size = 5, replace = TRUE)
age = sample(x = 1:90, size = 5, replace = TRUE)

#important survey scores
only_means = sample(x = 1:5, size = 5, replace = TRUE)
condemn = sample(x = 1:5, size = 5, replace = TRUE)
justified = sample(x = 1:5, size = 5, replace = TRUE)
message = sample(x = 1:5, size = 5, replace = TRUE)
prevent = sample(x = 1:5, size = 5, replace = TRUE)

df_s = data.frame(
  wave = wave,
  age = age,
  only_means = only_means,
  condemn = condemn,
  justified = justified,
  message = message,
  prevent = prevent
  )