#section 3.7
#Statistical transformations
#for this we deal with the diamonds dataset

?diamonds
head(diamonds)
dim(diamonds)
names(diamonds)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

#it is important to note in tis bar plot that X variable exists in the dataset, i.e, cut but count doesn't
#exist 
#normally in bar graphs and histograms, the data is binned and then the bin count is then plotted.
?geom_bar
#instead of using geom_bar we can also use stat_count. They can be used interchangeably 

ggplot(data = diamonds) +
  stat_count(mapping = aes(x = cut))

#This works because every geom has a default stat; and every stat has a default geom
#we now try to replace the defualt stat

demo <- tribble(
  ~cut,         ~freq,
  "Fair",       1610,
  "Good",       4906,
  "Very Good",  12082,
  "Premium",    13791,
  "Ideal",      21551
)

ggplot(data = demo) +
  geom_bar(mapping = aes(x = cut, y = freq), stat = "identity")

?tribble

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1))

ggplot(data = diamonds) + 
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )

?stat_bin

?stat_summary()
#so null is the default stat?

?geom_col()
?geom_bar()
?stat_smooth()


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop..))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = color, y = ..prop..))

# Position adjustments
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = cut))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = clarity))

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity, colour = clarity))


ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")

#3.8.1 Exercises
?mpg
head(mpg)
summary(mpg)
?geom_jitter
#width and height?
?geom_count
?geom_boxplot()
#read the help output for distinguishing between both
