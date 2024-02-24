marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
equal_frequency_bins <- cut(marks, breaks = 3, labels = c("Low", "Medium", "High"), include.lowest = TRUE)
equal_width_bins <- cut(marks, breaks = 3, labels = c("Bin1", "Bin2", "Bin3"), include.lowest = TRUE)
hist(marks, breaks = 3, main = "Histogram - Equal-frequency Partitioning", 
     xlab = "Marks", ylab = "Frequency", col = "skyblue", border = "black")
legend("topright", legend = c("Low", "Medium", "High"), fill = c("skyblue", "lightgreen", "pink"))
hist(marks, breaks = seq(min(marks), max(marks), length.out = 4), main = "Histogram - Equal-width Partitioning", 
     xlab = "Marks", ylab = "Frequency", col = "lightgreen", border = "black")
legend("topright", legend = c("Bin1", "Bin2", "Bin3"), fill = "lightgreen")
