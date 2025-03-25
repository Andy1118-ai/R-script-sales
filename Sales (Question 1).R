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

