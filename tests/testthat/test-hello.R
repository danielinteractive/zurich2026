test_that("hello works as expected", {
  expect_output(hello("Ben"), "Ciao, Ben")
  result <- hello("Daniel")
  expect_identical(result, "Hello, Daniel")
  expect_output(hello("Anna"), "Hi, Anna")
  expect_snapshot(hello("Ben"))
})

