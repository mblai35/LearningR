# linearModeling2.R
# R version 3.3.3 (2017-03-06)
# February 2, 2017. Mallory B. Lai.
# Reviewed by: TODO (Rachel) : Proofread for errors.
# More with linear modeling. 

#-----------------------------------------------------------------------

# Plot cars data set again. 
plot(cars)

# Fit a linear model. 
fit <- lm(cars$dist ~ cars$speed)

# Plot line of best fit. 
abline(fit, lty = 2, col = 'grey')

# Interpret the following code:
abline(h = fit$coefficients[1] + fit$coefficients[2] * fit$fitted.values[4])
abline(v = fit$fitted.values[4])
points(fit$fitted.values[4], 
       fit$coefficients[1] + fit$coefficients[2] * fit$fitted.values[4], 
       pch = 1, col = 'red')

# What does this tell you about fitted.values?



# Plot a histogram of the residuals. Explain what this graph means.





# Suppose you're asked to investigate how diet changes with stress. 
# You're given data collected from 1,000 women who tracked their 
# stress levels and their diet.  

# Simulate stress levels from 0-10.
stress <- seq(0, 10, by = .5)

# Simulate the number of women who ate chocolate as a function of 
# their stress levels.
chocolate <- 400 + 50 * stress + rnorm(length(stress), 0, 50)

# Simulate the number of women who ate salad as a function of 
# their stress levels. 
salad <- 400 - 25 * stress + rnorm(length(stress), 0, 50)

# Simulate the number of women who drank wine as a function of 
# their stress levels. 
wine <- 300 + 60 * stress + rnorm(length(stress), 0, 50)

# Simulate the number of women who drank water as a function of 
# their stress levels. 
water <- 850 - 5 * stress + rnorm(length(stress), 0, 50)

# Combine into data frame. 
dietData <- data.frame(stress, chocolate, salad, wine, water)


# Explain the relationship between stress and the four 'diet' variables.
# Provide graphs and numbers to support your explanation. (Pretend like 
# you can't see how the data frame was generated.) 









