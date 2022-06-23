#installing package containing library ggplot2, that includes dataset mpg with 38 US car models data
install.packages("tidyverse")
library("ggplot")
#to test Hypothesis if the car engine size in liters called displ influences a fuel consumption, thus fuel efficiency - hwy is lower with bigger engines. We are building a graph
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
#Our hypothesis is positiv, cars with larger engine size consume more fuel 
#functions used ggplot(), geom_point() and aes()
#boxplot example for car classes showing fuel efficiency by class 
ggplot(data = mpg) + geom_boxplot(mapping = aes(x = class, y = hwy))
#geom_count helps to prevent troubles with categorial data when two overlap, showing bigger values by being more bold
ggplot(data = mpg) + geom_count (mapping = aes(x = class, y= drv))

