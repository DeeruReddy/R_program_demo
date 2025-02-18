library(ggplot2)
ggplot(mpg, aes(x = displ, y = hwy, color = class)) + 
  geom_point() +  # Using points as geom_curve is not suitable for this context
  geom_smooth()
