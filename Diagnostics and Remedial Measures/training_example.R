days <- c(.5, .5, 1.0, 1.0, 1.5, 1.5, 2.0, 2.0, 2.5, 2.5)
score <- c(46, 51, 71, 75, 92, 99, 105, 112, 121, 125)
training <- data.frame(days, score)
training

# scatter plot of score vs. days
plot(x = days, y = score, main = "Score vs. Days")

# the relationship appears curvilinear and based on the prototype 
# regression pattern, we should try a transformation of either square
# root of X or log of X
days.root <- sqrt(days)
days.root

# check out Y against the transformation of X
plot(x = days.root, y = score, main = "Score vs. Sqrt(Days)")

# fit linear model with the transformed X
training.reg <- lm(score ~ days.root, data = training)
summary(training.reg)

# check residuals graphically 
plot(x = days.root, y = resid(training.reg), 
     main = "Residual Plot Against X'")
abline(0,0)

qqnorm(y = resid(training.reg))







