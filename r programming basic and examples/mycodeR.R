above <- function(x, n = 10) {
  use <- x > n
  x[use]
}

columnMean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

y <- 10

f <- function(x) {
  y <- 2
  y ^ 2 + g(x)
}

g <- function(x) {
  x * y
}

cube <- function(x, n) {
  x^3
}

