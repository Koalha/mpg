d <- boot::brambles

b <- function(){
    sam <- sample(1:NROW(d), replace = TRUE)
    m <- lm(age~x,data=d[sam,])
    return(coef(m))
}

res <- replicate(1000, b())
boxplot(t(res))
abline(h=0, lty=2)
