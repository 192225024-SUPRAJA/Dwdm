# Define the data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
smoothing_bin_mean <- function(data, bin_size) {
  smoothed_data <- rep(NA, length(data))
  for (i in 1:length(data)) {
    bin_start <- max(1, i - floor(bin_size / 2))
    bin_end <- min(length(data), i + floor(bin_size / 2))
    smoothed_data[i] <- mean(data[bin_start:bin_end])
  }
  return(smoothed_data)
}
smoothing_bin_median <- function(data, bin_size) {
  smoothed_data <- rep(NA, length(data))
  for (i in 1:length(data)) {
    bin_start <- max(1, i - floor(bin_size / 2))
    bin_end <- min(length(data), i + floor(bin_size / 2))
    smoothed_data[i] <- median(data[bin_start:bin_end])
  }
  return(smoothed_data)
}
smoothing_bin_boundaries <- function(data, bin_size) {
  smoothed_data <- rep(NA, length(data))
  for (i in 1:length(data)) {
    bin_start <- max(1, i - floor(bin_size / 2))
    bin_end <- min(length(data), i + floor(bin_size / 2))
    smoothed_data[i] <- (data[bin_start] + data[bin_end]) / 2
  }
  return(smoothed_data)
}
bin_size <- 5
smoothed_bin_mean <- smoothing_bin_mean(data, bin_size)
cat("Smoothed by Bin Mean:", smoothed_bin_mean, "\n")
smoothed_bin_median <- smoothing_bin_median(data, bin_size)
cat("Smoothed by Bin Median:", smoothed_bin_median, "\n")
smoothed_bin_boundaries <- smoothing_bin_boundaries(data, bin_size)
cat("Smoothed by Bin Boundaries:", smoothed_bin_boundaries, "\n")
