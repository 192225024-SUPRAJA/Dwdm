data <- c(200, 300, 400, 600, 1000)
min_max <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

min_max_normalized <- min_max(data)
cat("(a) Min-Max Normalization:", min_max_normalized, "\n")
z_score <- function(x) {
  return((x - mean(x)) / sd(x))
}

z_score_normalized <- z_score(data)
cat("(b) Z-Score Normalization:", z_score_normalized, "\n")
