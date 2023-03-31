if(!require(itsmr)) install.packages("itsmr", repos = "http://cran.us.r-project.org")
if(!require(TSA)) install.packages("TSA", repos = "http://cran.us.r-project.org")


# Exemplo 1.

n <- 1000
t <- 1:n
serie1 <- 2*cos(2*pi*t*6/n) + 3*sin(2*pi*t*6/n)
serie2 <- 4*cos(2*pi*t*10/n) + 5*sin(2*pi*t*10/n)
serie3 <- 6*cos(2*pi*t*40/n) + 7*sin(2*pi*t*40/n)
s <- serie1+serie2+serie3

y <- rnorm(n,sd=10) #arima.sim(n=1000,list(order=c(1,0,0),ar=0.1))
m <- 3.0 + 0.1*t
x <- m + s + y

series_all <- cbind(x,m,y)

par(mfrow=c(2,1))
plot.ts(s)
TSA::periodogram(s)


frequencias <- cbind(TSA::periodogram(s,plot = F)$freq,TSA::periodogram(s,plot = F)$spec)
frequencias

freq.sign <- head(frequencias[order(frequencias[,2],decreasing=T),],6)

y <- itsmr::hr(s,1/freq.sign[1:3,1])
itsmr::plotc(s,y)
