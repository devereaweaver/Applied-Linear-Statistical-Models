x <- c(125,100,200,75,150,175,75,175,125,200,100) 
y <- c(160,112,124,28,152,156,42,124,150,104,136)
data <- data.frame(x,y)
data.reg <- lm(y ~ x, data)
summary(data.reg)

