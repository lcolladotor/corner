set.seed(20190531)
my_mat <- matrix(rnorm(1000), ncol = 10)

test_that("multiplication works", {
    expect_equal(corner(my_mat, n = 1), my_mat[1, 1, drop = FALSE])
    expect_error(corner(vector(length = 1)))
})
