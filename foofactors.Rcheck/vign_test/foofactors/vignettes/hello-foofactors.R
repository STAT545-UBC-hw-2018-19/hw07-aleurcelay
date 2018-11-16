## ------------------------------------------------------------------------
library(foofactors)
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))

## ------------------------------------------------------------------------
c(a, b)

## ------------------------------------------------------------------------
fbind(a, b)

## ------------------------------------------------------------------------
set.seed(1234)
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
table(x)
as.data.frame(table(x))

## ------------------------------------------------------------------------
freq_out(x)

## ------------------------------------------------------------------------
months <- factor(c("january","february","march","april","may","june","july",
         "august","september","october","november","december"))
first_upper(months)

