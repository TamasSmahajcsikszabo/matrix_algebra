# vectors and vector spaces

# operations on vectors
# summation:
# two vectors can be added (i.e. they are **conformable** for addition) if the length of elements are equal
# a vector whole elements are 0s, is said to be additive identity for all conformable vectors

a <- c(1, 2, 3, 4, 6, 3)
b <- c(4, 5, 6, 2, 1, 2)
d <- c(0, 0, 0)
e <- c(1, 2, 3)

a + b
a + d
a + e # R applies shorter vector to longer, as opposed to conformability

# adding a scalar to a vector (adding the scalar (real number) to each element of the vector)
s <- 2
a + s

# scalar multiple of a vector (multiply a vector with a real number)
m <- 3
a * m

# an axpy operation (viewed as a single operation as a base for many linear algebra fields):
# a basic linear combination (LC)
a <- 2
x <- sample(seq(3, 9), 100, replace = TRUE)
y <- sample(seq(9, 19), 100, replace = TRUE)
# axpy
a * x + y

# a composition of more axpy operations is an axpy; an axpy can be decomposed into axpy operations
# LC + LC = LC, LC = a series of axpy operations
# convex combination: ax + by, where a, b >=0, a+b=1

# linear dependency:
# if a given vector can be created by linearly combining one or more vectors, they are all linearly dependent
# for example, in z = ax + y, the set of (z, x, y) are linearly dependent

# linear independence:
# if in a set of vectors, no one can be represented by combining any of the others, they are linearly independent
# for example, in z = ax + y, a set of any two from (z, x, y) can be linearly independent

# having {v_1 .. v_k} linearly independent vectors, if a1*v1 + ... + ak*vk = 0, then a1 = .. = ak = 0
# if this set is linealy dependent, it's possible to select a maximal linearly independent subset (MLIS):
# 1. we select an arbitrary vector vi1
# 2. we seek how many of the other vectors are independent of this
# 3. if none exists, and all are dependent of this vector, MLIS is this singleton, and all others are LCs of the vector
# 4. if one independent exists, vi2, and no other; MLIS is {vi1, vi2}, any other can be represented with any of these two, hence any three of the whole set: two can be formed into the third

# in n-vectors, the maximal cardinality of MLIS is n
# permutating the elements of one vector in a set doesn't change linear independence, if the same permuation is applied to the set
# linear independence of any subvectors implies linear independece of the full vectors
# having
# x = (x1 .. xn)
# y = (y1 .. yn)
# z = (z1 .. zn)
# and defining {i1 .. ik} is subset or equal of {1, .... n}
# we can et:
# x~ = (xi1 .. xik)
# y~ = (yi1 .. yik)
# z~ = (zi1 .. zik)
# if (x~, z~, y~) are linearly independent, we can imply the same for (x, y, z)
axpy <- function(a, x, y) {
    a * x + y
}
a <- 2
x <- c(3, 2, 3, 5, 4, 3, 2, 2, 3, 4, 3, 2, 6)
y <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, 4)
z <- axpy(a, x, y)

(z - y) / 2
