age <- 35
min_max <- function(x, min_val, max_val) {
  return((x - min_val) / (max_val - min_val))
}

min_age <- 0  # Minimum value in the range
max_age <- 100  # Maximum value in the range
min_max_normalized <- min_max(age, min_age, max_age)
cat("(i) Min-Max Normalization:", min_max_normalized, "\n")
z_score <- function(x, mean_val, sd_val) {
  return((x - mean_val) / sd_val)
}

mean_age <- 0  # Mean of the age distribution
sd_age <- 12.94  # Standard deviation of the age distribution
z_score_normalized <- z_score(age, mean_age, sd_age)
cat("(ii) Z-Score Normalization:", z_score_normalized, "\n")
decimal_scaling <- function(x, base) {
  return(x / base)
}

base <- 10 ^ (ceiling(log10(age)))
decimal_scaled <- decimal_scaling(age, base)
cat("(iii) Normalization by Decimal Scaling:", decimal_scaled, "\n")
