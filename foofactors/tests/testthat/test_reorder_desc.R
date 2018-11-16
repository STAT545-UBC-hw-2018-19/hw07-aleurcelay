context("Reorders levels of a factor in descending order")

test_that("reorders in descending order", {
  x <- factor(c('A', 'B', 'D', 'C'))
  expect_identical(levels (reorder_desc(x)), c('D','C', 'B', 'A'))            
})