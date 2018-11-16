<!-- README.md is generated from README.Rmd. Please edit that file -->
hw07-aleurcelay
===============

**NOTE: This an updated version of the foofactors package created by
Jenny Brian.The original package can be found in the following link:
[original foofactors](https://github.com/jennybc/foofactors). This
package was created for education purposes. It is meant to learn how to
create, modify, or update a package. If you want a package for factor
handling, please see
[forcats](https://cran.r-project.org/package=forcats).**

### foofactors

Factors are a very useful type of variable in R, but they can also drive
you nuts. This package provides some helper functions for the care and
feeding of factors.

### Installation

``` r
devtools::install_github("STAT545-UBC-students/hw07-aleurcelay/foofactors")
```

\#\#Summary This package contains the following functions.

-   `fbind()`: Glues two factors together and returns factor.
-   `freq_out()`: Returns a frequency table as a well-named `tbl_df`
-   `first_upper()`: Returns the same factor but with the first letter
    of each character value capitalized.
-   `subfactor()`: Returns a factor with just the first three letters of
    each element.
-   `factor_asis()`: Encodes a vector as a factor with levels in the
    same order as they appear in the data
-   `reorder_desc()`: Reorders the levels of a factor in a descending
    order.

Below is quick demo, for some more examples working with graphs take a
look at the [vignettes](http://rpubs.com/aleurcelay/440302)

### Quick demo

`fbind()`
---------

Binding two factors via `fbind()`:

``` r
library(foofactors)
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
```

Simply catenating two factors leads to a result that most don’t expect.

``` r
c(a, b)
#> [1] 1 3 4 2 1 3 4 2
```

The `fbind()` function glues two factors together and returns factor.

``` r
fbind(a, b)
#> [1] character hits      your      eyeballs  but       integer   where it 
#> [8] counts   
#> Levels: but character counts eyeballs hits integer where it your
```

Often we want a table of frequencies for the levels of a factor. The
base `table()` function returns an object of class `table`, which can be
inconvenient for downstream work. Processing with `as.data.frame()` can
be helpful but it’s a bit clunky.

``` r
set.seed(1234)
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
table(x)
#> x
#>  a  b  c  d  e 
#> 25 26 17 17 15
as.data.frame(table(x))
#>   x Freq
#> 1 a   25
#> 2 b   26
#> 3 c   17
#> 4 d   17
#> 5 e   15
```

`freq_out()`
------------

The `freq_out()` function returns a frequency table as a well-named
`tbl_df`:

``` r
freq_out(x)
#> # A tibble: 5 x 2
#>   x         n
#>   <fct> <int>
#> 1 a        25
#> 2 b        26
#> 3 c        17
#> 4 d        17
#> 5 e        15
```

`first_upper()`
---------------

The `first_upper()` function returns the same factor but with the first
letter of each character value capitalized.

``` r
months <- factor(c("january","february","march","april","may","june","july",
         "august","september","october","november","december"))
first_upper(months)
#>  [1] January   February  March     April     May       June      July     
#>  [8] August    September October   November  December 
#> 12 Levels: April August December February January July June March ... September
```

`subfactor()`
-------------

The `subfactor()` This function returns a factor with just the first
three letters of each element.

``` r
subfactor(months)
#>  [1] jan feb mar apr may jun jul aug sep oct nov dec
#> Levels: apr aug dec feb jan jul jun mar may nov oct sep
```

`factor_asis()`
---------------

The `factor_asis()` encodes a vector as a factor with levels in the same
order as they appear in the data

``` r
continents <- factor(c("Asia", "Europe", "Africa", "Americas", "Oceania"))
levels(continents)
#> [1] "Africa"   "Americas" "Asia"     "Europe"   "Oceania"

continents_asis <- factor_asis(c("Asia", "Europe", "Africa", "Americas", "Oceania"))
levels(continents_asis)
#> [1] "Asia"     "Europe"   "Africa"   "Americas" "Oceania"
```

`reorder_desc()`
----------------

The `reorder_desc()`reorders the levels of a factor in a descending
order.

``` r
alpha_continents <- factor(c("Africa", "Americas", "Asia", "Europe", "Oceania"))
alpha_continents
#> [1] Africa   Americas Asia     Europe   Oceania 
#> Levels: Africa Americas Asia Europe Oceania

reorder_desc(alpha_continents)
#> [1] Africa   Americas Asia     Europe   Oceania 
#> attr(,"scores")
#>   Africa Americas     Asia   Europe  Oceania 
#>       -1       -2       -3       -4       -5 
#> Levels: Oceania Europe Asia Americas Africa
```
