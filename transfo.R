


f <- function(x, G) {
  G2 <- G * G
  x2 <- x * x
  ifelse(x < 1, sqrt(1 - 1 / (x2 * G2)), sqrt(1 - x2 / G2))
}

G <- 100000
seq_x <- c(seq(from = 1/G, to = 1, length.out = G), seq(from = 1, to = G, length.out = G))
df <- data.frame(x = seq_x, y = f(seq_x, G))

ggplot(df, aes(x = x, y = y)) + geom_line()
ggplot(df, aes(x = x, y = y)) + geom_line() + scale_x_log10()
