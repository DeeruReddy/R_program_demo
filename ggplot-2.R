# Install ggplot2 if not already installed
install.packages("ggplot2")

# Load the ggplot2 library
library(ggplot2)

# Load the 'mpg' dataset
data(mpg)

# Create a scatter plot using ggplot2
ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point()  # Use geom_point for scatter plot


# 1. Plot with two points
plot(c(1, 8), c(3, 10))

# 2. Scatter plot with sequences of equal length
plot(1:8, 3:10)

# 3. Line plot
plot(1:10, type = "l")

# 4. Scatter plot with larger points
plot(1:10, cex = 2)

# 5. Scatter plot with different point shape and larger points
plot(1:10, pch = 20, cex = 2)

