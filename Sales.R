# Step 1: Load the dataset
library(readr)
sales_data <- read_csv("sales_data.csv")
head(sales_data)

# Step 2: Display only the Product and Sales columns
product_sales <- sales_data[, c("Product", "Sales")]
print(product_sales)

# Step 3: Filter rows where Sales > 5000
high_sales <- subset(sales_data, Sales > 5000)
print(high_sales)

# Step 4: Group by Region and calculate total sales per region
library(dplyr)
region_sales <- sales_data %>%
  group_by(Region) %>%
  summarise(Total_Sales = sum(Sales))
print(region_sales)

# Step 5: Save the summarized data to a new CSV file
write_csv(region_sales, "region_sales.csv")

# Load necessary libraries
library(ggplot2)
library(dplyr)

# Step 1: Calculate total sales for each product
product_sales_summary <- sales_data %>%
  group_by(Product) %>%
  summarise(Total_Sales = sum(Sales))

# Step 2: Create a bar chart
ggplot(product_sales_summary, aes(x = Product, y = Total_Sales, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Sales by Product",
       x = "Product",
       y = "Total Sales") +
  theme_minimal()

# Step 3: Filter data for Region A and convert Date column
region_a_data <- subset(sales_data, Region == "Region A")
region_a_data$Date <- as.Date(region_a_data$Date, format = "%m/%d/%Y")

# Step 4: Create a line plot
ggplot(region_a_data, aes(x = Date, y = Sales)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  labs(title = "Sales Trends Over Time in Region A",
       x = "Date",
       y = "Sales") +
  theme_minimal()