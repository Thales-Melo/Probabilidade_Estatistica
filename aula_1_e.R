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

x = runif (200, 100, 200)
y = 500 + (3*x) + rnorm(200, 0, 50)
x
y

plot (x, y, xlab = c("metros"), ylab = c("preco"))

S = sample (1:200, 150)
xtrain = x[S]
ytrain = y[S]
xtest = x[-5]
ytest = y[-5]
plot (x, y, xlab = c("metros"), ylab = c("preco"))

m=lm(ytrain~xtrain)
a=m$coefficients[1]
b=m$coefficients[2]
pred = a+b*xtest
erro = abs(ytest - pred)
hist(erro)

