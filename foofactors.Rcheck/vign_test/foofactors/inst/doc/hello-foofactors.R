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

## ---- warning = FALSE, message = FALSE, fig.width = 6, fig.height = 4----
library(tidyverse)
library(scales)
library(gapminder)
Euro <- gapminder %>%
  filter(year == 2007, continent == "Europe" ) %>% 
  head(20)

Euro %>%
  ggplot(aes(x = country, y = lifeExp)) +
  geom_point() +
  guides(fill=F) +
  labs(x = "Country", y = "Life Expectancy") +
  theme_bw()


## ---- fig.width=6, fig.height=4------------------------------------------
Euro %>%
  ggplot(aes(x = subfactor(country), y = lifeExp)) +
  geom_point() +
  labs(x = "Country", y = "Life Expectancy") +
  theme_bw()


## ------------------------------------------------------------------------
continents <- factor(c("Asia", "Europe", "Africa", "Americas", "Oceania"))
levels(continents)

continents_asis <- factor_asis(c("Asia", "Europe", "Africa", "Americas", "Oceania"))
levels(continents_asis)

## ---- fig.width=6, fig.height=4------------------------------------------
gapminder %>%
  filter(year == 2007) %>%
  ggplot(aes(x = continent, fill = continent)) +
  scale_fill_brewer(palette = "Pastel2") +
  geom_bar() +
  guides(fill=F) +
  labs(x = "Continent", y = "Number of countries") +
  theme_bw()


## ---- fig.width=6, fig.height=4------------------------------------------
gapminder %>%
  filter(year == 2007) %>%
  ggplot(aes(x = factor_asis(continent), fill = continent)) +
  scale_fill_brewer(palette = "Pastel2") +
  geom_bar() +
  guides(fill=F) +
  labs(x = "Continent", y = "Number of countries") +
  theme_bw()

## ------------------------------------------------------------------------
alpha_continents <- factor(c("Africa", "Americas", "Asia", "Europe", "Oceania"))
alpha_continents

reorder_desc(alpha_continents)

## ---- fig.width=6, fig.height=4------------------------------------------
gapminder %>%
  filter(year == 2007) %>%
  ggplot(aes(x = reorder_desc(continent), fill = continent)) +
  scale_fill_brewer(palette = "Pastel2") +
  geom_bar() +
  guides(fill=F) +
  labs(x = "Continent", y = "Number of countries") +
  theme_bw()

