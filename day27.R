# Load the MASS package for the "quakes" dataset
library(MASS)

# Explore the dataset
str(quakes)

# Plot a scatter plot
plot(quakes$mag, quakes$depth, 
     xlab = "Magnitude", ylab = "Depth",
     main = "Scatter plot of Depth vs Magnitude")

# Fit a linear regression model
lm_model <- lm(depth ~ mag, data = quakes)
abline(lm_model, col = "red")  # Add regression line to the plot

# Predict depth for magnitude = 5
magnitude_new <- 5
predicted_depth <- predict(lm_model, data.frame(mag = magnitude_new))
print(paste("Predicted depth for magnitude =", magnitude_new, "is", round(predicted_depth, 2)))
# Load the MASS package for the "quakes" dataset
library(MASS)

# Explore the dataset
str(quakes)

# Plot a scatter plot
plot(quakes$mag, quakes$depth, 
     xlab = "Magnitude", ylab = "Depth",
     main = "Scatter plot of Depth vs Magnitude")

# Fit a linear regression model
lm_model <- lm(depth ~ mag, data = quakes)
abline(lm_model, col = "red")  # Add regression line to the plot

# Predict depth for magnitude = 5
magnitude_new <- 5
predicted_depth <- predict(lm_model, data.frame(mag = magnitude_new))
print(paste("Predicted depth for magnitude =", magnitude_new, "is", round(predicted_depth, 2)))
