# Data
class_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
class_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# (i) Mean, Median, and Range
mean_A <- mean(class_A)
median_A <- median(class_A)
range_A <- max(class_A) - min(class_A)

mean_B <- mean(class_B)
median_B <- median(class_B)
range_B <- max(class_B) - min(class_B)

# Compare means
mean_comparison <- ifelse(mean_A > mean_B, "Class A", ifelse(mean_A < mean_B, "Class B", "Both classes"))

# Compare medians
median_comparison <- ifelse(median_A > median_B, "Class A", ifelse(median_A < median_B, "Class B", "Both classes"))

# Compare ranges
range_comparison <- ifelse(range_A > range_B, "Class A", ifelse(range_A < range_B, "Class B", "Both classes"))

print("Mean Comparison:")
print(paste("Class A Mean:", mean_A))
print(paste("Class B Mean:", mean_B))
print(paste("Class with Higher Mean:", mean_comparison))

print("Median Comparison:")
print(paste("Class A Median:", median_A))
print(paste("Class B Median:", median_B))
print(paste("Class with Higher Median:", median_comparison))

print("Range Comparison:")
print(paste("Class A Range:", range_A))
print(paste("Class B Range:", range_B))
print(paste("Class with Larger Range:", range_comparison))

# (ii) Boxplot
boxplot(class_A, class_B, names = c("Class A", "Class B"), 
        main = "Boxplot of Class A and Class B",
        ylab = "Scores", col = c("red", "blue"))
