alturas = rnorm(20000, 1.7, 0.1)
hist(alturas)
m_real = mean(alturas)

m_amostra = rep(0,1000)
for (i in 1:1000) {
  S = sample(1:20000, 30)
  amostra = alturas[S]
m_amostra[i] = mean(amostra)
}

hist(m_amostra)
abline(v=m_real)