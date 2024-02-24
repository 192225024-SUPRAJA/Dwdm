x_values <- c(4, 1, 5, 7, 10, 2, 50, 25, 90, 36)
y_values <- c(12, 5, 13, 19, 31, 7, 153, 72, 275, 110)
plot(x_values, y_values, 
     xlab = "Number of Mobile Phones Sold", 
     ylab = "Money",
     main = "Scatter Plot of Mobile Phones Sold vs. Money",
     col = "blue",
     pch = 16)
grid()
legend("topleft", legend = "Data Points", pch = 16, col = "blue")
