#geometric objects
#3.6.1 Exercises
#What does show.legend = FALSE do? What happens if you remove it?
#Why do you think I used it earlier in the chapter?
#show.legend = true shows the legend in the plot and changing it into false would not show it. 

#What does the se argument to geom_smooth()
?geom_smooth()
#Display confidence interval around smooth? (TRUE by default, see level to control.)

#Will these two graphs look different? Why/why not?
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()

ggplot() + 
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))

#both the plots look the same but if we compare the both then we see that the 
#first code avoids duplication.

#example/test
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ drv, nrow = 2)

#Recreate the R code necessary to generate the following graphs.
#clarification: should it be done with all the plots in one or seperate?

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth(se = FALSE)


ggplot(data = mpg , mapping = aes(x = displ, y = hwy, group = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

ggplot(data = mpg , mapping = aes(x = displ, y = hwy, group = drv, colour = drv)) +
  geom_point() +
  geom_smooth(se = FALSE) 

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, group = drv, colour = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)


ggplot(data = mpg, mapping = aes(x = displ, y = hwy, group = drv, colour = drv, linetype = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, group = drv, colour = drv)) + 
  geom_point()
 
?geom_point()
  