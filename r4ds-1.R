#ggplot2 - grammar of graphics , used for describing and building graphs.
#ggplot2 is one of the core members of tidyverse
library(tidyverse)
#while dealing with packages there are only two things you can do
#install.packages("tidyverse")
#library(tidyverse)

#means that we are using the ggplot() function from  the ggplot2 package
ggplot2::ggplot()
#not only used for plotting but can alos obtain information on the dataset
ggplot2::mpg

#lets answer this research quesrtion: 
#Do cars with big engines use more fuel than cars with small engines?

#we draw an exploratory plot for finding the answer to this question 
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
#from the plot we can see there is a negative linear relationship

#ggplot(data = <DATA>) + 
#<GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

#Run ggplot(data = mpg). What do you see?
ggplot(data = mpg)

#How many rows are in mpg? How many columns?
dim(mtcars)
nrow(mtcars)
ncol(mtcars)

#What does the drv variable describe? Read the help for ?mpg to find out.
?mtcars
?mpg

names(mtcars)

#Make a scatterplot of hwy vs cyl
ggplot(data = mpg) + geom_point(mapping = aes(x = hwy, y = cyl))

#What happens if you make a scatterplot of class vs drv? Why is the plot not useful?
ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = drv))
#not useful because the plot doesnt explain much

#using aesthetics in the plot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# Left
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Right
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

#when you set an aesthetic manually you should specify it outside 
ggplot(data = mpg) + 
geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#What’s gone wrong with this code? Why are the points not blue?
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

#the above points are not blue because, to add an aesthetic manually we need to specify it outside of the brackets

#Which variables in mpg are categorical? Which variables are continuous? 
#(Hint: type ?mpg to read the documentation for the dataset). 
#How can you see this information when you run mpg

?mpg
#typeof(mpg)
#class(mpg)
#mode(mpg)
summary(mpg)
#the ones with the class/mode as character mostly seem to be categorical

# Left
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
#Error: A continuous variable can not be mapped to shape

# mapping a continuous variable to shape
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = displ))

#mapping a shape to a categorical variable
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = drv), color = "blue")

#What happens if you map the same variable to multiple aesthetics?
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = drv, alpha = drv, size = drv))

#What does the stroke aesthetic do? What shapes does it work with?
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, stroke = year))

#aes(colour = displ < 5)
#ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), colour = displ < 5)

#you can split your code into facets, that are subplots
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 1)

#trying out the facet wrap for other variables 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ drv, nrow = 2)
#the variable that we pass to the the formula in facet wrap shoukd be discrete or catergorical.

#using facet on your plot that has more thanb 2 variables
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(. ~ cyl)


