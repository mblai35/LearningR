# basics.R
# R version 3.3.3 (2017-03-06)
# Jan 19, 2017. Mallory B. Lai.
# Reviewed by: TODO (Rachel) : Find reviewer to proofread
# Introduction to the basics of R. 

#-----------------------------------------------------------------------
# libraries go here
#-----------------------------------------------------------------------

### Initializing vectors, investigating data structures, and creating
# matrices.

# Create a vector, 'height.' 
height <- c(72, 65, 85, 80, 63, 77, 70)

# Create another vector, 'weight,' my multiplying height
# by 1.15
weight <- height * 1.15

# Check the 'structure' of height. 
str(height)

# Check the 'structure' of weight. 
str(weight)

# Combine height and weight into a matrix, 'size.' 
size <- matrix(height, weight, nrow = 7, ncol = 2)

# Look at the documentation for matrix.
?matrix

# Check the structure of 'size.'
str(size)

# Now your turn: 
# First, let's remove 'height,' 'weight,' and 'size' from our workspace. 
rm(height)
rm(weight)
rm(size)

# Create a vector, 'price.'


# Check 'structure' of price. 


# Create another vector, 'sold.'


# Check the structure of 'sold.'


# Combine 'price' and 'sold' into a matrix. 


