test_that("goodbye works as expected", {
  expect_output(goodbye("Ben"), "Goodbye, Ben")
  result <- goodbye("Daniel")
  expect_identical(result, "Goodbye, Daniel")
})
