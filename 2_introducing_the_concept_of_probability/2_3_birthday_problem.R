require("Rmpfr")

person <- function(n, k) {
    return (factorialMpfr(n) / factorialMpfr(n - k))
}

count <- 200

p <- double(count)

for (k in 1:count) {
    d <- (1 - person(365, k) / (mpfr(365, precBits = 1024) ^ k)) * 100 
    p[k] <- asNumeric(d)
}

plot(1:count, p, xlab = "Number of people in the room", ylab = "Probability of a shared birthday in %", type = "l", col = "blue", lwd = 2) # nolint: line_length_linter. # nolint