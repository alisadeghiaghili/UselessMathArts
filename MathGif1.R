N <- 120
t <- (0:4e4) / 1e4
x <- 1i ^ t
l <- c(-2, 2)
gifski::save_gif(
  lapply(1:N, \(b){
  a = sin(9 * pi * (t + 4 / 3 * b / N)/ 3) ^ 40
  z = x + x ^ 4 / 2 - exp(-3i * pi * (t + 2 / 3 * b / N)) / 2 + a / 5 * x ^ 1e3
  par(bg = "black", mar = rep(1, 4))
  plot(z, cex = 0.1, col = hsv(.6 + sin(t) / 4, a, 1), xlim = l, ylim = l)}), w = 600, h = 600, d = 1 / 40)
