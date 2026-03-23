#Blog link: https://zoerprogramming.wordpress.com/2026/03/22/assignment-9-visualization-in-r-base-graphics-lattice-and-ggplot2/

install.packages("Ecdat")
library(Ecdat)

install.packages("lattice")
library(lattice)

library(ggplot2)


data("Computers", package = "Ecdat")
head(Computers)

#Base R
#Scatterplot
plot(Computers$price, Computers$ram,
     main   = "Price of Computers based on their RAM",
     xlab   = "Price",
     ylab   = "RAM")

# Histogram
hist(Computers$price,
     main   = "Base: Distribution of price",
     xlab   = "Price of Computers")

#Lattice
# Conditional scatter plot (small multiples)
xyplot(ram ~ price | factor(speed),
       data = Computers,
       main = "Lattice: RAM and Price by Speed")

# Box-and-whisker plot
bwplot(ram ~ price,
       data = Computers,
       main = "Lattice: Price by RAM")

#Density Plot
densityplot(~ speed | ram, data = Computers,
            xlab="Speed",
            main="Speed by RAM")

#ggplot
# Scatter plot with smoothing
ggplot(Computers, aes(x = price, y = ram)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: Price vs. RAM with trend")

# Faceted histogram
ggplot(Computers, aes(price)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ ram) +
  labs(title = "ggplot2: Price distribution by RAM")
