data <- c(200, 300, 400, 600, 1000)
min_val <- 200
max_val <- 1000
min_max_normalized <- (data - min_val) / (max_val - min_val)
mean_val <- mean(data)
std_val <- sd(data)
z_score_normalized <- (data - mean_val) / std_val
cat("(a) Min-Max Normalized Data:\n")
print(min_max_normalized)
cat("\n(b) Z-Score Normalized Data:\n")
print(z_score_normalized)
