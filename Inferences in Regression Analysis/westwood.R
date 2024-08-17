lot_size <- c(30, 20, 60, 80, 40, 50, 60, 30, 70, 60)
man_hours <- c(73, 50, 128, 170, 87, 108, 135, 69, 148, 132)
westwood <- data.frame(lot_size, man_hours)
westwood.regression <- lm(man_hours ~ lot_size, westwood)
