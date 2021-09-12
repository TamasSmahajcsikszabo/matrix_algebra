## Vector and Matrix basics


# Vector
# notation: v_x
# n-vector, n-tuple
# ordered multiset of elements or scalars
# n is length
# n-vector = a representation of a point in an n-dimentsional space
# length is also the Eucledian distance from the origin to this represented point
# length example:
set.seed(232)
v <- c(sample(seq(1, 10), 20, replace = TRUE))
sq <- function(x) {
    x^2
}
eucledian <- sqrt(sum(unlist(lapply(v, sq))))

# length is measured by a norm


# Arrays
# structured collections of elements in lines or rectangles
# dimensions are the rank of the array
# scalar = array of rank 0, a degenerate array (rank 0 tensor)
# vector = array of rank 1 (rank 1 tensor)
# matrix = array of rank 2 (rank 2 tensor, although tensors need equal dimensions)


# Matrix
# notation: A, element a_x,y or a_xy
# T is for transposing, when a vector is treated as a 1 X n matrix
# rectangular, 2-dimensional array
# n X m: n rows and m columns, each considered to be a vector
# the number of n and m determina the shape of a matrix, which is a *doubleton*, such as (i, j), not a single value!
# dimension is 1. 2-dimensionality of a matrix, 2. but also means the number of columns (i.e. number of variables/features)
# notation: A = [a_11 .. a_nm] or A = (a_ij) where i = {1 .. n} and j = {1 .. m}
# also for element notation: a_ij = (A)_ij

#similariy:

compare <- function(x,y) {
    x == y
}

are_equal <- function(x, y) {
    if (any(is.vector(x), is.vector(y))) {

        length_test  <- length(x) == length(y)

    } else if(any(is.matrix(x), is.matrix(y))) {
        length_test  <- dim(x) == dim (y)

    }

    length_test && compare(x,y)

}

# notation:
# a_i* notates is the column vector corresponding to the ith row
# a_*j is the jth column of the matrix
# so a matrix can also be notated as :
# A = [a_1*^T ... a_n*^T] or A = [a_*1 ... a _*m]
