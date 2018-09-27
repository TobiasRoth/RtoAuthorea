# Example to add a figure to the Manuscript
library(tidyverse)

# Create Figure
png("Figure_iris.png", width = 800, height = 400)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, col = Species)) +
  geom_point() +
  geom_smooth()
dev.off()

# Include Figure into manuscript
au_add_figure("Figure1.svg")










