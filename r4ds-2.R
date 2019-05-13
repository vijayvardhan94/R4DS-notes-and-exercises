#using different geometric objects in ggplot. When we choose tpo represent it differently we say we 
#use different "geoms".
#in simple terms  bar charts use bar geoms, line charts use line geoms

# checking the differences in using different geoms
#point geom
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

#smooth geom
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))

#differernt geoms with differebnt lines
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))
#geom_smooth() separates the cars into three lines based on their drv value

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE
  )
#two different geoms in the same plot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

#the above method leads to code duplication, so instead we can use this:
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth()
  
#an other complicated version of ggplot
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth()

#drawing lines for different categories

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)


ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class == "2seater"), se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(mapping = aes(shape = class))

#What geom would you use to draw a line chart? A boxplot? A histogram? An area chart?
ggplot(data = mpg) + geom_line(mapping = aes(x = displ, y= hwy))
ggplot(data = mpg) + geom_boxplot(mapping = aes(x = displ, y= hwy))
ggplot(data = mpg) + geom_histogram(mapping = aes(x = displ))
ggplot(data = mpg) + geom_area(mapping = aes(x = displ, y= hwy))

#checlk for r output
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth(se = TRUE, show.legend = TRUE)

ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = TRUE
  )

?ggplot2::geom_smooth
