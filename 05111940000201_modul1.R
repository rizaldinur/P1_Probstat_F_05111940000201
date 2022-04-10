#1a
dgeom(x = 3, prob = 0.20)

#1b
mean(rgeom(n = 10000, prob = 0.20) == 3)

#1d
p = 0.20
n=3
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "lain")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Gagal sebelum bertemu",
       subtitle = "Geometric(.2)",
       x = "Gagal sebelum bertemu (x)",
       y = "Probabilitas") 

#1e
m_data <-  1/ p
v_data<-(1 - p) / p^2

#2a
dbinom(x = 4, size = 20, prob = 0.2)

#2b
binom_prob<-rbinom(n = 4 ,size=20, prob=0.2)
hist(binom_prob)

#2c
n = 20
p = 0.2
q=0.8
m_bin<- n*p
v_bin<- n*p*q


#3a
dpois(x=6, lambda = 4.5)

#3b
pois_prob<- dpois(x = 6, lambda = 4.5 * 365)
hist(pois_prob)

#4a
dchisq(x = 2, df =10)

#4b
chisq_prob <- rchisq(100, df=10)
hist(chisq_prob)

#4c
df = 10
m_chi <- df
v_chi<-2*df

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
