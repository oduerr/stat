# Simple Plotting

# x,y plots
x = seq(0,2*pi,length.out = 100)
y = sin(x)

# Simple plot
plot(x,y)
plot(x,y, type='l')
plot(x,y, col=as.integer(x), type='b')
plot(x,y, col=as.integer(x), type='b', xlab = 'X-Axis')

# with data frames
df = data.frame(x=x, y=y, z=x*10)
plot(df) #Shows all against all
plot(y ~ x, df) #Alternative Syntax y is model by x

# Nice default visualizations
d = iris
d$Species = NULL
plot(d, col=iris$Species)

# Factor varibles (first tabularize)
barplot(table(iris$Species))

# Statistical Visualization
hist(iris$Sepal.Length, main=NULL)
boxplot(iris$Sepal.Length) 

boxplot(d)

boxplot(count ~ spray, data = InsectSprays)
boxplot(mpg~cyl,data=mtcars, main="Car Milage Data", 
        xlab="Number of Cylinders", ylab="Miles Per Gallon")




