rm (list = ls(all=TRUE))

B <- (1000)
estimator1 <- numeric(B)                  #values array for estimator 1
estimator2 <- numeric(B)                  #values array for estimator 2

n<-10
for (i in 1:B){                           #loop to run the random sampling
  randomSample <- rexp(n,2)               #for n=10, n=100, n=1000 and theta = 2
  estimator1[i] = 1/mean(randomSample)    #finds value of estimator1
  estimator2[i] = (n-1)/sum(randomSample) #finds value of estimator2
}

T1 = mean(estimator1)
T2 = mean(estimator2)

hist(estimator1, breaks = 25, col = "red", main = "average value of estimator1", sub = "n=10")
hist(estimator2, breaks = 25, col = "blue", main = "average value of estimator2", sub = "n=10")
