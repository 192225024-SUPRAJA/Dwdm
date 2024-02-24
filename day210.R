library(ggplot2)
diabetes <- read.csv("diabetes.csv")
str(diabetes)

diabetes$age_group <- cut(diabetes$Age, breaks = c(0, 20, 40, 60, 80, 100),
                          labels = c("0-20", "21-40", "41-60", "61-80", "81-100"))

scatterplot <- ggplot(diabetes, aes(x = Age, y = BloodPressure, color = age_group)) +
  geom_point() +
  labs(x = "Age", y = "Blood Pressure", title = "Blood Pressure vs Age") +
  theme_minimal() +
  theme(legend.position = "top")

print(scatterplot)
bar_chart <- ggplot(diabetes, aes(x = age_group, y = BloodPressure)) +
  geom_bar(stat = "summary", fun = mean, fill = "skyblue") +
  labs(x = "Age Group", y = "Average Blood Pressure", title = "Average Blood Pressure by Age Group") +
  theme_minimal()

print(bar_chart)
