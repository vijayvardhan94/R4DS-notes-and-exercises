#object_name <- value
a <- sin(pi / 2)
a

b <- seq(1, 10)
b
x <- "hello world"
x
y <- seq(1, 10, length.out = 6)
y

y <- seq(1, 12, length.out = 6)
y

library(tidyverse)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

fliter(mpg, cyl = 8)
#error because of filter typo
filter(diamonds, carat > 3)

library(nycflights13)
library(tidyverse)
?flights
head(flights)
#Pick observations by their values (filter()).
#Reorder the rows (arrange()).
#Pick variables by their names (select()).
#Create new variables with functions of existing variables (mutate()).
#Collapse many values down to a single summary (summarise()).

#filtering rows woth filter
filter(flights, month == 1, day == 1)
