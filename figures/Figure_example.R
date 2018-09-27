# Example to add a figure to the Manuscript
library(tidyverse)

# Create Figure
png("figures/Figure_iris/Figure_iris.png", width = 800, height = 400)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, col = Species)) +
  geom_point() +
  geom_smooth() +
  labs(x = "Length of sepal", y = "Width of sepal")
dev.off()
