# linearModeling.R
# R version 3.3.3 (2017-03-06)
# Jan 26, 2017. Mallory B. Lai.
# Reviewed by: TODO (Rachel) : Proofread for errors.
# Introduction to linear modeling. 

#-----------------------------------------------------------------------

### The math part: 
# Exploring the cars data set. 
# Load cars data into environment. 
cars <- cars

# Plot cars data set. 
plot(cars) 
     
# Let's look at a boxplot for the speed variable.
# Do you see any outliers?
boxplot(cars$speed)
     
# Let's look at a boxplot for the dist variable.
# Do you see any outliers?
boxplot(cars$dist)     

# What are the five things a boxplot tells you?



# Plot a histogram of speed.
hist(cars$speed)

# Plot a histogram of dist.
hist(cars$dist)

# Compute the correlation matrix for the variables in cars. 
cor(cars)

# Compute the correlation between speed and dist. 
cor(cars$speed, cars$dist)

# Let's fit a linear model for cars. 
fit <- lm(cars$dist ~ cars$speed)

# Let's investigate fit a bit more. 
fit
fit$coefficients
fit$residuals
fit$model

# What are the coefficients? What do they mean in terms of a linear 
# model?




# Let's plot cars again, along with the line of best fit.
plot(cars)
abline(fit, col = "red")

# Draw a dotted horizontal line (lty = line type) at y = 60.
abline(h = 60, col = "blue", lty = 2)

# Draw a thick (lwd = line width) vertical line at x = 20.
abline(v = 20, col = "green", lty = 4, lwd = 4)

# What does the plot of cars and the line of best fit look like when 
# fit <- lm(cars$speed ~ cars$dist)?


### The design part:
# Plot the different types of symbols available when plotting points.
plot(1:25, pch = c(1:25))

# Plot cars data set, paying attention to the arguments.
plot(cars, main = "Appropriate Title Here", 
     xlab = "x label here", ylab = "y label here",
     col = "mistyrose3", pch = 6)

# Plot again, this time finding a color 
# at http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf
# and changing pch. 
plot(cars, main = "Appropriate Title Here", 
     xlab = "x label here", ylab = "y label here",
     col = "__________", pch = _____)

# Plot again, this time finding a color at http://htmlcolorcodes.com. 
plot(cars, main = "Appropriate Title Here", 
     xlab = "x label here", ylab = "y label here",
     col = "#968AB8", pch = 8)

# Plot again, but as a line. 
plot(cars, main = "Appropriate Title Here", 
     xlab = "x label here", ylab = "y label here",
     col = "#968AB8", pch = 8, type = 'l')

# Experiment with changing 'type.'



### Now, let's do both!
# We're going to simulate data to represent the number of cats
# a person should own as a function of their age. 
# Simulate some data by creating a vector 'years'--a sequence from 
# 1-100 by 1.


# Create a vector to add some 'noise' to our model.
error <- rnorm(100, 0, 15)

# Let 'cats' = 2 * years + 4 + error.


# Plot cats on the y-axis and years on the x-axis. 
# hint: plot(x, y)


# Fit a linear model and plot the data with the line of best fit.
# Plot it pretty and make sure your color palette goes well with 
# millenial pink. Also, don't forget labels. 


# Mark my age, 28, with a millenial pink vertical line. 


# Use the linear model to determine the number of cats I SHOULD have
# right meow. 
# Make a horizontal line at this value. 









