context("factor levels in the same order as they appear in the data")

test_that("Factors in same order as input", {
  x <- factor(c('3', '1', '2', '4'))
  expect_equal(levels (factor_asis(x)), c('3', '1', '2', '4'))            
})