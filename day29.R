
points <- c(50, 60, 65, 70, 75, 80, 85, 90, 95, 100, 150)
boxplot(points, 
        main = "Boxplot of Points Scored by Tennis Players",
        ylab = "Points Scored")
title(main = "Boxplot of Points Scored by Tennis Players", ylab = "Points Scored")
outliers <- boxplot(points, plot = FALSE)$out
if (length(outliers) > 0) {
  points <- data.frame(points = outliers, label = rep("Outlier", length(outliers)))
  text(x = 1, y = outliers, labels = paste("Player", which(points$points == outliers), ":", outliers), pos = 3, col = "red")
}
