#' Get top left corner of a matrix
#'
#' @param mat A matrix or list object.
#' @param n The number of elements to show (number or rows and columns)
#'
#' @return Returns the first `n` rows and `n` columns of the matrix (top left
#' corner)
#' @export
#'
#' @examples
#'
# set.seed(20190531)
# my_mat <- matrix(rnorm(1000), ncol = 10)
# corner(my_mat)
#'
corner = function(mat, n=6) {
	if (class(mat)[1] == "list") {
		# return corners of first n items of list
		return(lapply(mat[seq_len(min(length(mat), n))], function(x) x[seq_len(min(nrow(x), n)),seq_len(min(ncol(x), n))]) )
	} else {
		return(mat[seq_len(min(nrow(mat), n)),seq_len(min(ncol(mat), n)), drop = FALSE])
	}
}