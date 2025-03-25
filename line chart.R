# Load the necessary library
library(ggplot2)

# Example dataset
# Replace this with your actual time series dataset
data <- data.frame(
  Month = as.Date(c('2022-01-01', '2022-02-01', '2022-03-01', '2022-04-01', '2022-05-01', 
                    '2022-06-01', '2022-07-01', '2022-08-01', '2022-09-01', '2022-10-01',
                    '2022-11-01', '2022-12-01')),
  Sales = c(150, 200, 250, 300, 400, 350, 450, 500, 550, 600, 700, 750)
)

# Create the line chart with ggplot2
ggplot(data, aes(x = Month, y = Sales)) +
  geom_line(color = "blue") +  # Line for sales data
  geom_point(color = "blue", size = 2) +  # Points for actual sales data
  geom_smooth(method = "loess", color = "red", se = FALSE) +  # Smooth trend line
  labs(title = "Monthly Sales Trends", x = "Month", y = "Sales") +
  theme_minimal() +  # Minimal theme for a clean look
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

