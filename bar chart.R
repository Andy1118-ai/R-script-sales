##### Example data
values <- c(0.4, 0.75, 0.2, 0.6, 0.5)                 # Create values for barchart

##### Example 1
barplot(values)                                       # Basic barchart in R

##### Example 2
barplot(values,                                       # Barchart with colored bars
        col = "#1b98e0")

##### Example 3
barplot(values,                                       # Horizontal barchart
        horiz = TRUE)

##### Example 4
group <- LETTERS[1:5]                                 # Create grouping variable
barplot(values,                                       # Add labels to barplot
        names.arg = group)

##### Example 5
data <- as.matrix(data.frame(A = c(0.2, 0.4),         # Create matrix for stacked barchart
                             B = c(0.3, 0.1),
                             C = c(0.7, 0.1),
                             D = c(0.1, 0.2),
                             E = c(0.3, 0.3)))
rownames(data) <- c("Group 1", "Group 2")
data                                                  # Print matrix to console

barplot(data,                                         # Create stacked barchart
        col = c("#1b98e0", "#353436"))

legend("topright",                                    # Add legend to barplot
       legend = c("Group 1", "Group 2"),
       fill = c("#1b98e0", "#353436"))

##### Example 6
barplot(data,                                         # Create grouped barchart
        col = c("#1b98e0", "#353436"),
        beside = TRUE)

legend("topright",                                    # Add legend to barplot
       legend = c("Group 1", "Group 2"),
       fill = c("#1b98e0", "#353436"))

##### Example 7
install.packages("ggplot2")                           # Install ggplot2 package
library("ggplot2")                                    # Load ggplot2 package

data_ggp <- data.frame(group, values)                 # Create data frame for ggplot2

ggplot(data_ggp, aes(x = group, y = values)) +        # Create barchart with ggplot2
  geom_bar(stat = "identity")

##### Example 8
install.packages("plotly")                            # Install plotly package
library("plotly")                                     # Load plotly package

plot_ly(x = group,                                    # Create barchart with plotly
        y = values,
        type = "bar")

