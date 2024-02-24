pencil_counts <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
mean_pencils <- mean(pencil_counts)
median_pencils <- median(pencil_counts)
mode_pencils <- names(sort(table(pencil_counts), decreasing = TRUE))[1]
cat("Mean:", mean_pencils, "\n")
cat("Median:", median_pencils, "\n")
cat("Mode:", mode_pencils, "\n")
