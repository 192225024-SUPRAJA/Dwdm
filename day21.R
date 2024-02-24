# Define the data
age <- c("5-6 years", "7-8 years", "9-10 years")
photo_A <- c(18, 2, 20)
photo_B <- c(22, 28, 10)
photo_C <- c(20, 40, 40)

# Create a data frame
data <- data.frame(age, photo_A, photo_B, photo_C)

# 1. Calculate the sample covariance between B and C using cov()
cov_BC <- cov(data$photo_B, data$photo_C)
print(paste("Sample Covariance between B and C:", cov_BC))

# 2. Calculate the sample covariance matrix for the preferences using cov()
cov_matrix <- cov(data[, -1])  # Exclude the 'age' column
print("Sample Covariance Matrix:")
print(cov_matrix)

# 3. Calculate the sample correlation between B and C using cor()
cor_BC <- cor(data$photo_B, data$photo_C)
print(paste("Sample Correlation between B and C:", cor_BC))

# 4. Calculate the sample correlation matrix for the preferences using cor()
cor_matrix <- cor(data[, -1])  # Exclude the 'age' column
print("Sample Correlation Matrix:")
print(cor_matrix)
