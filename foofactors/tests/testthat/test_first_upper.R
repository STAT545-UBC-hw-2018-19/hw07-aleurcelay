context("First letter of factor values is capitalized")

test_that("First letter is capital", {
  x <- factor(c('canada', 'mexico', 'cuba'))
  expect_equal(levels (first_upper(x)), c('Canada', 'Cuba', 'Mexico'))            
})