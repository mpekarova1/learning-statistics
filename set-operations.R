x <- 1:4
y <- 3:6

setequal(x, y)
setequal(x, c(1, 2, 3, 4))

is.element(1, x)
2 %in% y

is.element(x, y)

union(x, y)
intersect(x, y)
setdiff(x, y)

z <- c('a', 'b', 'c')
mode(z)
mode(x)
a <- union(x, z)
mode(a)
intersect(x, z)
union((union(x, z)), y)