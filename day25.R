data(AirPassengers)
bin_width <- 150
start_point <- 100
end_point <- 700
hist(AirPassengers, 
     xlim = c(start_point, end_point), 
     breaks = seq(start_point, end_point, by = bin_width), 
     main = "Histogram of AirPassengers Dataset",
     xlab = "Passenger Count",
     ylab = "Frequency")
