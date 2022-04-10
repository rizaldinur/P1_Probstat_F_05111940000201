#1a
dgeom(x = 3, prob = 0.20)

#1b
mean(rgeom(n = 10000, prob = 0.20) == 3)

#1d
index <- (1:10)   
geom_p <- dgeom(index, prob = 0.20)    
hist(geom_p)

#1e
mean(geom_p)
var(geom_p)

#2a
dbinom(x = 4, size = 20, prob = 0.2)

#2b
binom_prob<- dbinom(index,size=20, prob=0.2)
hist(binom_prob)

#2c
mean(binom_prob)
var(binom_prob)

#3a
dpois(x=6, lambda = 4.5)

#3b
pois_prob<- dpois(x = 6, lambda = 4.5 * 365)
hist(pois_prob)

#3c
mean(pois_prob)
var(pois_prob)

#4a
dchisq(x = 2, df =10)

#4b
chisq_prob <- rchisq(100, df=10)
hist(chisq_prob)

#4c
mean(chisq_prob)
var(chisq_prob)

#5a
set.seed(1)
dexp(x = rexp(1), rate = 3)

#5b
set.seed(1)
r_10<-rexp(10, 3)
r_100<-rexp(100, 3)
r_1000<-rexp(1000, 3)
r_10000<-rexp(10000, 3)

hist(r_10)
hist(r_100)
hist(r_1000)
hist(r_10000)

#5c
mean(r_100)
var(r_100)

#6a
r_norm <- rnorm(100, mean=50, sd = 8)
plot(r_norm)

#6b
hist(main ='05111940000201_Rizaldi Nur Rahman Naufal_Probstat_F_DNhistogram', r_norm, breaks = 50)

#6c
var(r_norm)