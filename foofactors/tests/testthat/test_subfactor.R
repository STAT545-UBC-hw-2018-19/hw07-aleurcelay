context("Change factor values to only their first three letters")

test_that("First three letter of factor values", {
  x <- factor(c('Canada', 'Mexico', 'Cuba'))
  expect_equal(levels(subfactor(x)), c('Can', 'Cub', 'Mex'))            
})