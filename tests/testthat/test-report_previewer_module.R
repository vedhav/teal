testthat::test_that("report_previewer_module throws error if label is not string", {
  expect_error(reporter_previewer_module(label = 5), "Assertion on 'label' failed: Must be of type 'string'")
  expect_error(reporter_previewer_module(label = c("A", "B")), "Assertion on 'label' failed: Must have length 1.")
})

testthat::test_that("report_previewer_module throws no error and stores label if label is string", {
  expect_error(r_p_m <- reporter_previewer_module(label = "My label"), NA)
  expect_equal(r_p_m$label, "My label")
})

testthat::test_that("report_previewer_module default label is Report previewer ", {
  r_p_m <- reporter_previewer_module()
  expect_equal(r_p_m$label, "Report previewer")
})
