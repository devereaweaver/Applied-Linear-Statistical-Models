# Transformations for Nonnormality and Unequal Error Variances
age <- c(rep(0,5), rep(1.0,5), rep(2.0,5), rep(3.0,5), rep(4.0,5))
plasma <- c(13.44, 12.84, 11.91, 20.09, 15.60, 10.11, 11.38, 10.28,
            8.96, 8.59, 9.83, 9.00, 8.65, 7.85, 8.88, 7.94, 6.01,
            5.14, 6.90, 6.77, 4.86, 5.10, 5.67, 5.75, 6.23)
plasma_levels <- data.frame(age, plasma)

# scatterplot of original data
plot(x = age, y = plasma)

# observe the variance of 4 is decreasing as x increases
# based on the prototype regression plots, we can try to transform
# Y
plasma.log <- log(x = plasma, base = 10)
plasma.log

plasma_levels$plasma.log <- plasma.log

# scatter plot again 
plot(x = age, y = plasma.log)

# this plot shows a negative linear relationship with more equal
# variances
plasma_levels.fit <- lm(plasma.log ~ age, data = plasma_levels)
summary(plasma_levels.fit)

# check out some residuals 
plot(x = plasma_levels$age, y = resid(plasma_levels.fit))
abline(0,0)

qqnorm(y = resid(plasma_levels.fit))


