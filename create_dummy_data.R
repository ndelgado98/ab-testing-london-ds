# Create Dummy Experimental Data 

baseline <- rnorm(n = 132, mean = 5.45,sd = 2)
experiment <- rnorm(n = 132, mean = 8.76,sd = 2)

df <- data.frame(baseline, experiment)

write.csv(df, file = "experiment_data.csv")

t.test(df$baseline, df$experiment, var.equal = FALSE)


#--------------------------------------------------------

set.seed(100)

baseline_small <- rnorm(n = 30, mean = 4.15,sd = 12)
experiment_small <- rnorm(n = 30, mean = 10.82,sd = 17)

df_small <- data.frame(baseline_small, experiment_small)
t.test(df_small$baseline, df_small$experiment, var.equal = FALSE)

write.csv(df_small, file = "experiment_data_small.csv")
