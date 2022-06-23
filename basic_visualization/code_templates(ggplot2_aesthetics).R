install.package("tidyverse")
library(ggplot)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class ))
#adding third variable class and applying a color(British - colour) value for it. All cars that belong to 2seater are red.
#alternative is size = class , though it will not show class that obvious: using size for a discrete variable is not advised.
#Next alternative is transparency of the points alpha = class, it is not advised for a discrete variable
#Alternative shape = class, restriction up to 6 discrete values, more than six is difficult to discriminate 
#using different aesthetics for continuous variables, like cty 
#applying color, not really informative, but shows graduate change of the color
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = cty ))
#applying shape to cty, cannot be mapped to shape 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = cty))
#applying size to cty
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy, size = cty))
rlang :: last_error()
rlang :: last_trace()
#applying variable to multiple aesthetics in ggplot2  
ggplot(data = mpg) +
  geom_point(mapping = aes (x = displ, y = hwy, color = class, size = class, shape = class))
#aes can compare if a statement is true or false and show results based on that
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = hwy, color = displ < 5))
#change aes color (blue, red, green etc.)
ggplot (data = mpg) + 
  geom_point(mapping = aes (x = displ, y = hwy), colour = "green")

